
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neon_type_el {scalar_t__ type; int size; } ;
struct TYPE_4__ {unsigned int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; scalar_t__ immisalign; } ;


 int NEON_REGLIST_LENGTH (int) ;
 int NS_NULL ;
 scalar_t__ NT_invtype ;
 int N_16 ;
 int N_32 ;
 int N_64 ;
 int N_8 ;
 int _ (char*) ;
 int constraint (int,int ) ;
 int first_error (int ) ;
 TYPE_2__ inst ;
 struct neon_type_el neon_check_type (int,int ,int) ;
 int neon_logbits (int ) ;

__attribute__((used)) static void
do_neon_ld_st_interleave (void)
{
  struct neon_type_el et = neon_check_type (1, NS_NULL,
                                            N_8 | N_16 | N_32 | N_64);
  unsigned alignbits = 0;
  unsigned idx;





  const int typetable[] =
    {
      0x7, -1, 0xa, -1, 0x6, -1, 0x2, -1,
       -1, -1, 0x8, 0x9, -1, -1, 0x3, -1,
       -1, -1, -1, -1, 0x4, 0x5, -1, -1,
       -1, -1, -1, -1, -1, -1, 0x0, 0x1
    };
  int typebits;

  if (et.type == NT_invtype)
    return;

  if (inst.operands[1].immisalign)
    switch (inst.operands[1].imm >> 8)
      {
      case 64: alignbits = 1; break;
      case 128:
        if (NEON_REGLIST_LENGTH (inst.operands[0].imm) == 3)
          goto bad_alignment;
        alignbits = 2;
        break;
      case 256:
        if (NEON_REGLIST_LENGTH (inst.operands[0].imm) == 3)
          goto bad_alignment;
        alignbits = 3;
        break;
      default:
      bad_alignment:
        first_error (_("bad alignment"));
        return;
      }

  inst.instruction |= alignbits << 4;
  inst.instruction |= neon_logbits (et.size) << 6;






  idx = ((inst.operands[0].imm >> 4) & 7)
        | (((inst.instruction >> 8) & 3) << 3);

  typebits = typetable[idx];

  constraint (typebits == -1, _("bad list type for instruction"));

  inst.instruction &= ~0xf00;
  inst.instruction |= typebits << 8;
}
