
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int N_F32 ;
 int N_S16 ;
 int N_S32 ;
 int N_S8 ;
 int N_SUF_32 ;
 int neon_compare (int ,int,int ) ;

__attribute__((used)) static void
do_neon_cmp (void)
{
  neon_compare (N_SUF_32, N_S8 | N_S16 | N_S32 | N_F32, FALSE);
}
