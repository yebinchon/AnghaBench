
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NT_unsigned ;
 int N_SUF_32 ;
 int neon_dyadic_misc (int ,int ,int ) ;

__attribute__((used)) static void
do_neon_dyadic_if_su_d (void)
{


  neon_dyadic_misc (NT_unsigned, N_SUF_32, 0);
}
