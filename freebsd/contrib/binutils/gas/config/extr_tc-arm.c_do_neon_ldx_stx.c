
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; int reg; scalar_t__ writeback; int immisreg; scalar_t__ postind; } ;


 int HI1 (int) ;
 int LOW4 (int) ;

 int NEON_ENC_DUP (int) ;
 int NEON_ENC_INTERLV (int) ;
 int NEON_ENC_LANE (int) ;

 int NEON_LANE (int) ;
 int _ (char*) ;
 int constraint (int,int ) ;
 int do_neon_ld_dup () ;
 int do_neon_ld_st_interleave () ;
 int do_neon_ld_st_lane () ;
 TYPE_2__ inst ;
 scalar_t__ thumb_mode ;

__attribute__((used)) static void
do_neon_ldx_stx (void)
{
  switch (NEON_LANE (inst.operands[0].imm))
    {
    case 128:
      inst.instruction = NEON_ENC_INTERLV (inst.instruction);
      do_neon_ld_st_interleave ();
      break;

    case 129:
      inst.instruction = NEON_ENC_DUP (inst.instruction);
      do_neon_ld_dup ();
      break;

    default:
      inst.instruction = NEON_ENC_LANE (inst.instruction);
      do_neon_ld_st_lane ();
    }


  inst.instruction |= LOW4 (inst.operands[0].reg) << 12;
  inst.instruction |= HI1 (inst.operands[0].reg) << 22;
  inst.instruction |= inst.operands[1].reg << 16;

  if (inst.operands[1].postind)
    {
      int postreg = inst.operands[1].imm & 0xf;
      constraint (!inst.operands[1].immisreg,
                  _("post-index must be a register"));
      constraint (postreg == 0xd || postreg == 0xf,
                  _("bad register for post-index"));
      inst.instruction |= postreg;
    }
  else if (inst.operands[1].writeback)
    {
      inst.instruction |= 0xd;
    }
  else
    inst.instruction |= 0xf;

  if (thumb_mode)
    inst.instruction |= 0xf9000000;
  else
    inst.instruction |= 0xf4000000;
}
