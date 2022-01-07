
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neon_type_el {int dummy; } ;
typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {scalar_t__ isscalar; } ;


 scalar_t__ FAIL ;
 int NEON_CHECK_ARCH ;
 int NEON_CHECK_CC ;
 int NEON_ENC_SCALAR (int ) ;
 int NS_DDS ;
 int NS_NULL ;
 int NS_QQS ;
 int NT_untyped ;
 int N_EQK ;
 int N_F32 ;
 int N_I16 ;
 int N_I32 ;
 int N_IF_32 ;
 int N_KEY ;
 scalar_t__ SUCCESS ;
 int do_vfp_nsyn_mla_mls ;
 TYPE_2__ inst ;
 struct neon_type_el neon_check_type (int,int,int ,int ,int) ;
 int neon_dyadic_misc (int ,int ,int ) ;
 int neon_mul_mac (struct neon_type_el,int ) ;
 int neon_quad (int) ;
 int neon_select_shape (int ,int ,int ) ;
 scalar_t__ try_vfp_nsyn (int,int ) ;
 scalar_t__ vfp_or_neon_is_neon (int) ;

__attribute__((used)) static void
do_neon_mac_maybe_scalar (void)
{
  if (try_vfp_nsyn (3, do_vfp_nsyn_mla_mls) == SUCCESS)
    return;

  if (vfp_or_neon_is_neon (NEON_CHECK_CC | NEON_CHECK_ARCH) == FAIL)
    return;

  if (inst.operands[2].isscalar)
    {
      enum neon_shape rs = neon_select_shape (NS_DDS, NS_QQS, NS_NULL);
      struct neon_type_el et = neon_check_type (3, rs,
        N_EQK, N_EQK, N_I16 | N_I32 | N_F32 | N_KEY);
      inst.instruction = NEON_ENC_SCALAR (inst.instruction);
      neon_mul_mac (et, neon_quad (rs));
    }
  else
    {


      neon_dyadic_misc (NT_untyped, N_IF_32, 0);
    }
}
