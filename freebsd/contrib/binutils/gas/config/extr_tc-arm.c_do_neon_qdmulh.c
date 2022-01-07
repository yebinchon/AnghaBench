
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neon_type_el {int size; } ;
typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {scalar_t__ isscalar; } ;


 int NEON_ENC_INTEGER (int ) ;
 int NEON_ENC_SCALAR (int ) ;
 int NS_DDD ;
 int NS_DDS ;
 int NS_NULL ;
 int NS_QQQ ;
 int NS_QQS ;
 int N_EQK ;
 int N_KEY ;
 int N_S16 ;
 int N_S32 ;
 TYPE_2__ inst ;
 struct neon_type_el neon_check_type (int,int,int ,int ,int) ;
 int neon_mul_mac (struct neon_type_el,int ) ;
 int neon_quad (int) ;
 int neon_select_shape (int ,int ,int ) ;
 int neon_three_same (int ,int ,int ) ;

__attribute__((used)) static void
do_neon_qdmulh (void)
{
  if (inst.operands[2].isscalar)
    {
      enum neon_shape rs = neon_select_shape (NS_DDS, NS_QQS, NS_NULL);
      struct neon_type_el et = neon_check_type (3, rs,
        N_EQK, N_EQK, N_S16 | N_S32 | N_KEY);
      inst.instruction = NEON_ENC_SCALAR (inst.instruction);
      neon_mul_mac (et, neon_quad (rs));
    }
  else
    {
      enum neon_shape rs = neon_select_shape (NS_DDD, NS_QQQ, NS_NULL);
      struct neon_type_el et = neon_check_type (3, rs,
        N_EQK, N_EQK, N_S16 | N_S32 | N_KEY);
      inst.instruction = NEON_ENC_INTEGER (inst.instruction);

      neon_three_same (neon_quad (rs), 0, et.size);
    }
}
