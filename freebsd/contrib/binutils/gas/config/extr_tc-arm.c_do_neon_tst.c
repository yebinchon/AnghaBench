
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neon_type_el {int size; } ;
typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;


 int NS_DDD ;
 int NS_NULL ;
 int NS_QQQ ;
 int N_16 ;
 int N_32 ;
 int N_8 ;
 int N_EQK ;
 int N_KEY ;
 struct neon_type_el neon_check_type (int,int,int ,int ,int) ;
 int neon_quad (int) ;
 int neon_select_shape (int ,int ,int ) ;
 int neon_three_same (int ,int ,int ) ;

__attribute__((used)) static void
do_neon_tst (void)
{
  enum neon_shape rs = neon_select_shape (NS_DDD, NS_QQQ, NS_NULL);
  struct neon_type_el et = neon_check_type (3, rs,
    N_EQK, N_EQK, N_8 | N_16 | N_32 | N_KEY);
  neon_three_same (neon_quad (rs), 0, et.size);
}
