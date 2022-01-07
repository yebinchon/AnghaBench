
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N_S16 ;
 int N_S32 ;
 int neon_mac_reg_scalar_long (int,int) ;

__attribute__((used)) static void
do_neon_mul_sat_scalar_long (void)
{
  neon_mac_reg_scalar_long (N_S16 | N_S32, N_S16 | N_S32);
}
