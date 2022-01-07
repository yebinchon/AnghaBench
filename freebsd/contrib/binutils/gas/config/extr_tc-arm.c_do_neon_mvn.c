
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; scalar_t__ isreg; } ;


 int HI1 (int ) ;
 int LOW4 (int ) ;
 int NEON_ENC_IMMED (int) ;
 int NEON_ENC_INTEGER (int) ;
 int NS_DD ;
 int NS_NULL ;
 int NS_QQ ;
 TYPE_2__ inst ;
 int neon_dp_fixup (int) ;
 int neon_move_immediate () ;
 int neon_quad (int) ;
 int neon_select_shape (int ,int ,int ) ;

__attribute__((used)) static void
do_neon_mvn (void)
{
  if (inst.operands[1].isreg)
    {
      enum neon_shape rs = neon_select_shape (NS_DD, NS_QQ, NS_NULL);

      inst.instruction = NEON_ENC_INTEGER (inst.instruction);
      inst.instruction |= LOW4 (inst.operands[0].reg) << 12;
      inst.instruction |= HI1 (inst.operands[0].reg) << 22;
      inst.instruction |= LOW4 (inst.operands[1].reg);
      inst.instruction |= HI1 (inst.operands[1].reg) << 5;
      inst.instruction |= neon_quad (rs) << 6;
    }
  else
    {
      inst.instruction = NEON_ENC_IMMED (inst.instruction);
      neon_move_immediate ();
    }

  inst.instruction = neon_dp_fixup (inst.instruction);
}
