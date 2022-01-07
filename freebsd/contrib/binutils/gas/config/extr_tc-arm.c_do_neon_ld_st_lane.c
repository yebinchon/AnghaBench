
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neon_type_el {int size; scalar_t__ type; } ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; int immisalign; } ;


 int FAIL ;
 int NEON_LANE (int) ;
 int NEON_REGLIST_LENGTH (int) ;
 int NEON_REG_STRIDE (int) ;
 int NS_NULL ;
 scalar_t__ NT_invtype ;
 int N_16 ;
 int N_32 ;
 int N_8 ;
 int _ (char*) ;
 int constraint (int,int ) ;
 TYPE_2__ inst ;
 int neon_alignment_bit (int,int,int*,int,int,int,int,int,...) ;
 struct neon_type_el neon_check_type (int,int ,int) ;
 int neon_logbits (int) ;

__attribute__((used)) static void
do_neon_ld_st_lane (void)
{
  struct neon_type_el et = neon_check_type (1, NS_NULL, N_8 | N_16 | N_32);
  int align_good, do_align = 0;
  int logsize = neon_logbits (et.size);
  int align = inst.operands[1].imm >> 8;
  int n = (inst.instruction >> 8) & 3;
  int max_el = 64 / et.size;

  if (et.type == NT_invtype)
    return;

  constraint (NEON_REGLIST_LENGTH (inst.operands[0].imm) != n + 1,
              _("bad list length"));
  constraint (NEON_LANE (inst.operands[0].imm) >= max_el,
              _("scalar index out of range"));
  constraint (n != 0 && NEON_REG_STRIDE (inst.operands[0].imm) == 2
              && et.size == 8,
              _("stride of 2 unavailable when element size is 8"));

  switch (n)
    {
    case 0:
      align_good = neon_alignment_bit (et.size, align, &do_align, 16, 16,
                                       32, 32, -1);
      if (align_good == FAIL)
        return;
      if (do_align)
        {
          unsigned alignbits = 0;
          switch (et.size)
            {
            case 16: alignbits = 0x1; break;
            case 32: alignbits = 0x3; break;
            default: ;
            }
          inst.instruction |= alignbits << 4;
        }
      break;

    case 1:
      align_good = neon_alignment_bit (et.size, align, &do_align, 8, 16, 16, 32,
                                       32, 64, -1);
      if (align_good == FAIL)
        return;
      if (do_align)
        inst.instruction |= 1 << 4;
      break;

    case 2:
      constraint (inst.operands[1].immisalign,
                  _("can't use alignment with this instruction"));
      break;

    case 3:
      align_good = neon_alignment_bit (et.size, align, &do_align, 8, 32,
                                       16, 64, 32, 64, 32, 128, -1);
      if (align_good == FAIL)
        return;
      if (do_align)
        {
          unsigned alignbits = 0;
          switch (et.size)
            {
            case 8: alignbits = 0x1; break;
            case 16: alignbits = 0x1; break;
            case 32: alignbits = (align == 64) ? 0x1 : 0x2; break;
            default: ;
            }
          inst.instruction |= alignbits << 4;
        }
      break;

    default: ;
    }


  if (n != 0 && NEON_REG_STRIDE (inst.operands[0].imm) == 2)
    inst.instruction |= 1 << (4 + logsize);

  inst.instruction |= NEON_LANE (inst.operands[0].imm) << (logsize + 5);
  inst.instruction |= logsize << 10;
}
