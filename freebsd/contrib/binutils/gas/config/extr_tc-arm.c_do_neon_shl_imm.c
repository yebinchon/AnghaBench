
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neon_type_el {scalar_t__ type; int size; } ;
typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {unsigned int reg; int imm; int isreg; } ;


 int FALSE ;
 int NEON_ENC_IMMED (int ) ;
 int NEON_ENC_INTEGER (int ) ;
 int NS_DDD ;
 int NS_DDI ;
 int NS_NULL ;
 int NS_QQI ;
 int NS_QQQ ;
 scalar_t__ NT_unsigned ;
 int N_EQK ;
 int N_I_ALL ;
 int N_KEY ;
 int N_SGN ;
 int N_SU_ALL ;
 TYPE_2__ inst ;
 struct neon_type_el neon_check_type (int,int,int,int,...) ;
 int neon_imm_shift (int ,int ,int ,struct neon_type_el,int ) ;
 int neon_quad (int) ;
 int neon_select_shape (int ,int ,int ) ;
 int neon_three_same (int ,int,int ) ;

__attribute__((used)) static void
do_neon_shl_imm (void)
{
  if (!inst.operands[2].isreg)
    {
      enum neon_shape rs = neon_select_shape (NS_DDI, NS_QQI, NS_NULL);
      struct neon_type_el et = neon_check_type (2, rs, N_EQK, N_KEY | N_I_ALL);
      inst.instruction = NEON_ENC_IMMED (inst.instruction);
      neon_imm_shift (FALSE, 0, neon_quad (rs), et, inst.operands[2].imm);
    }
  else
    {
      enum neon_shape rs = neon_select_shape (NS_DDD, NS_QQQ, NS_NULL);
      struct neon_type_el et = neon_check_type (3, rs,
        N_EQK, N_SU_ALL | N_KEY, N_EQK | N_SGN);
      unsigned int tmp;
      tmp = inst.operands[2].reg;
      inst.operands[2].reg = inst.operands[1].reg;
      inst.operands[1].reg = tmp;
      inst.instruction = NEON_ENC_INTEGER (inst.instruction);
      neon_three_same (neon_quad (rs), et.type == NT_unsigned, et.size);
    }
}
