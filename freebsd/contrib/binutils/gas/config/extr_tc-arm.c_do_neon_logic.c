
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neon_type_el {scalar_t__ type; int size; } ;
typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
typedef enum neon_opc { ____Placeholder_neon_opc } neon_opc ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {unsigned int imm; unsigned int reg; scalar_t__ regisimm; scalar_t__ isreg; scalar_t__ present; } ;


 int FAIL ;
 int HI1 (unsigned int) ;
 int LOW4 (unsigned int) ;
 int NEON_ENC_IMMED (int) ;
 int NEON_ENC_INTEGER (int) ;
 int NS_DDD ;
 int NS_DI ;
 int NS_NULL ;
 int NS_QI ;
 int NS_QQQ ;
 scalar_t__ NT_invtype ;
 int N_EQK ;
 int N_F32 ;
 int N_I16 ;
 int N_I32 ;
 int N_I64 ;
 int N_I8 ;
 int N_IGNORE_TYPE ;
 int N_KEY ;




 int abort () ;
 TYPE_2__ inst ;
 struct neon_type_el neon_check_type (int,int,int,...) ;
 int neon_cmode_for_logic_imm (unsigned int,unsigned int*,int) ;
 int neon_dp_fixup (int) ;
 int neon_invert_size (unsigned int*,int ,int) ;
 int neon_quad (int) ;
 int neon_select_shape (int ,int ,int ) ;
 int neon_three_same (int,int ,int) ;
 int neon_write_immbits (unsigned int) ;

__attribute__((used)) static void
do_neon_logic (void)
{
  if (inst.operands[2].present && inst.operands[2].isreg)
    {
      enum neon_shape rs = neon_select_shape (NS_DDD, NS_QQQ, NS_NULL);
      neon_check_type (3, rs, N_IGNORE_TYPE);

      inst.instruction = NEON_ENC_INTEGER (inst.instruction);
      neon_three_same (neon_quad (rs), 0, -1);
    }
  else
    {
      enum neon_shape rs = neon_select_shape (NS_DI, NS_QI, NS_NULL);
      struct neon_type_el et = neon_check_type (2, rs,
        N_I8 | N_I16 | N_I32 | N_I64 | N_F32 | N_KEY, N_EQK);
      enum neon_opc opcode = inst.instruction & 0x0fffffff;
      unsigned immbits;
      int cmode;

      if (et.type == NT_invtype)
        return;

      inst.instruction = NEON_ENC_IMMED (inst.instruction);

      immbits = inst.operands[1].imm;
      if (et.size == 64)
 {


   if (immbits != (inst.operands[1].regisimm ?
     inst.operands[1].reg : 0))
     {

       immbits = 0xdeadbeef;
     }
 }

      switch (opcode)
        {
        case 130:
          cmode = neon_cmode_for_logic_imm (immbits, &immbits, et.size);
          break;

        case 128:
          cmode = neon_cmode_for_logic_imm (immbits, &immbits, et.size);
          break;

        case 131:

          neon_invert_size (&immbits, 0, et.size);
          cmode = neon_cmode_for_logic_imm (immbits, &immbits, et.size);
          break;

        case 129:

          neon_invert_size (&immbits, 0, et.size);
          cmode = neon_cmode_for_logic_imm (immbits, &immbits, et.size);
          break;

        default:
          abort ();
        }

      if (cmode == FAIL)
        return;

      inst.instruction |= neon_quad (rs) << 6;
      inst.instruction |= LOW4 (inst.operands[0].reg) << 12;
      inst.instruction |= HI1 (inst.operands[0].reg) << 22;
      inst.instruction |= cmode << 8;
      neon_write_immbits (immbits);

      inst.instruction = neon_dp_fixup (inst.instruction);
    }
}
