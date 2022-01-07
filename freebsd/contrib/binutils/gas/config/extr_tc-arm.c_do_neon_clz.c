
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neon_type_el {int size; } ;
typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;


 int NS_DD ;
 int NS_NULL ;
 int NS_QQ ;
 int N_EQK ;
 int N_I16 ;
 int N_I32 ;
 int N_I8 ;
 int N_KEY ;
 struct neon_type_el neon_check_type (int,int,int ,int) ;
 int neon_quad (int) ;
 int neon_select_shape (int ,int ,int ) ;
 int neon_two_same (int ,int,int ) ;

__attribute__((used)) static void
do_neon_clz (void)
{
  enum neon_shape rs = neon_select_shape (NS_DD, NS_QQ, NS_NULL);
  struct neon_type_el et = neon_check_type (2, rs,
    N_EQK, N_I8 | N_I16 | N_I32 | N_KEY);
  neon_two_same (neon_quad (rs), 1, et.size);
}
