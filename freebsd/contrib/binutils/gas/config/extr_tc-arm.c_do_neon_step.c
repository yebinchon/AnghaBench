
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;


 int NS_DDD ;
 int NS_NULL ;
 int NS_QQQ ;
 int N_EQK ;
 int N_F32 ;
 int N_KEY ;
 int neon_check_type (int,int,int ,int ,int) ;
 int neon_quad (int) ;
 int neon_select_shape (int ,int ,int ) ;
 int neon_three_same (int ,int ,int) ;

__attribute__((used)) static void
do_neon_step (void)
{
  enum neon_shape rs = neon_select_shape (NS_DDD, NS_QQQ, NS_NULL);
  neon_check_type (3, rs, N_EQK, N_EQK, N_F32 | N_KEY);
  neon_three_same (neon_quad (rs), 0, -1);
}
