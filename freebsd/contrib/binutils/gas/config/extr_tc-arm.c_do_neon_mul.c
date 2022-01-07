
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* operands; } ;
struct TYPE_3__ {scalar_t__ isscalar; } ;


 scalar_t__ FAIL ;
 int NEON_CHECK_ARCH ;
 int NEON_CHECK_CC ;
 int NT_poly ;
 int N_F32 ;
 int N_I16 ;
 int N_I32 ;
 int N_I8 ;
 int N_P8 ;
 scalar_t__ SUCCESS ;
 int do_neon_mac_maybe_scalar () ;
 int do_vfp_nsyn_mul ;
 TYPE_2__ inst ;
 int neon_dyadic_misc (int ,int,int ) ;
 scalar_t__ try_vfp_nsyn (int,int ) ;
 scalar_t__ vfp_or_neon_is_neon (int) ;

__attribute__((used)) static void
do_neon_mul (void)
{
  if (try_vfp_nsyn (3, do_vfp_nsyn_mul) == SUCCESS)
    return;

  if (vfp_or_neon_is_neon (NEON_CHECK_CC | NEON_CHECK_ARCH) == FAIL)
    return;

  if (inst.operands[2].isscalar)
    do_neon_mac_maybe_scalar ();
  else
    neon_dyadic_misc (NT_poly, N_I8 | N_I16 | N_I32 | N_F32 | N_P8, 0);
}
