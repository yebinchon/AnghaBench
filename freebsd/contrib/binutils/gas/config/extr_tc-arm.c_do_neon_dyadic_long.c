
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neon_type_el {int size; } ;


 int NS_QDD ;
 int N_DBL ;
 int N_EQK ;
 int N_KEY ;
 int N_SU_32 ;
 struct neon_type_el neon_check_type (int,int ,int,int,int) ;
 int neon_mixed_length (struct neon_type_el,int ) ;

__attribute__((used)) static void
do_neon_dyadic_long (void)
{

  struct neon_type_el et = neon_check_type (3, NS_QDD,
    N_EQK | N_DBL, N_EQK, N_SU_32 | N_KEY);
  neon_mixed_length (et, et.size);
}
