
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neon_type_el {unsigned int size; scalar_t__ type; } ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {unsigned int imm; int reg; } ;


 int HI1 (int ) ;
 int LOW4 (int ) ;
 int NEON_ENC_IMMED (int) ;
 int NEON_ENC_INTEGER (int) ;
 int NS_QDI ;
 scalar_t__ NT_unsigned ;
 int N_DBL ;
 int N_EQK ;
 int N_I16 ;
 int N_I32 ;
 int N_I8 ;
 int N_KEY ;
 int N_SU_32 ;
 int TRUE ;
 TYPE_2__ inst ;
 struct neon_type_el neon_check_type (int,int ,int,int) ;
 int neon_dp_fixup (int) ;
 int neon_imm_shift (int ,int,int ,struct neon_type_el,unsigned int) ;
 int neon_logbits (unsigned int) ;

__attribute__((used)) static void
do_neon_shll (void)
{

  struct neon_type_el et = neon_check_type (2, NS_QDI,
    N_EQK | N_DBL, N_I8 | N_I16 | N_I32 | N_KEY);
  unsigned imm = inst.operands[2].imm;

  if (imm == et.size)
    {

      inst.instruction = NEON_ENC_INTEGER (inst.instruction);
      inst.instruction |= LOW4 (inst.operands[0].reg) << 12;
      inst.instruction |= HI1 (inst.operands[0].reg) << 22;
      inst.instruction |= LOW4 (inst.operands[1].reg);
      inst.instruction |= HI1 (inst.operands[1].reg) << 5;
      inst.instruction |= neon_logbits (et.size) << 18;

      inst.instruction = neon_dp_fixup (inst.instruction);
    }
  else
    {

      et = neon_check_type (2, NS_QDI,
        N_EQK | N_DBL, N_SU_32 | N_KEY);
      inst.instruction = NEON_ENC_IMMED (inst.instruction);
      neon_imm_shift (TRUE, et.type == NT_unsigned, 0, et, imm);
    }
}
