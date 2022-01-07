
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FAIL ;
 int NEON_CHECK_ARCH ;
 int NEON_CHECK_CC ;
 int NT_untyped ;
 int N_I64 ;
 int N_IF_32 ;
 scalar_t__ SUCCESS ;
 int do_vfp_nsyn_add_sub ;
 int neon_dyadic_misc (int ,int,int ) ;
 scalar_t__ try_vfp_nsyn (int,int ) ;
 scalar_t__ vfp_or_neon_is_neon (int) ;

__attribute__((used)) static void
do_neon_addsub_if_i (void)
{
  if (try_vfp_nsyn (3, do_vfp_nsyn_add_sub) == SUCCESS)
    return;

  if (vfp_or_neon_is_neon (NEON_CHECK_CC | NEON_CHECK_ARCH) == FAIL)
    return;



  neon_dyadic_misc (NT_untyped, N_IF_32 | N_I64, 0);
}
