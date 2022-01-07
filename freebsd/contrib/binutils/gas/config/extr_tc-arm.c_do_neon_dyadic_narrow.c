
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neon_type_el {int size; int type; } ;


 int NS_QDD ;
 int NT_integer ;
 int N_DBL ;
 int N_EQK ;
 int N_I16 ;
 int N_I32 ;
 int N_I64 ;
 int N_KEY ;
 struct neon_type_el neon_check_type (int,int ,int,int,int) ;
 int neon_mixed_length (struct neon_type_el,int) ;

__attribute__((used)) static void
do_neon_dyadic_narrow (void)
{
  struct neon_type_el et = neon_check_type (3, NS_QDD,
    N_EQK | N_DBL, N_EQK, N_I16 | N_I32 | N_I64 | N_KEY);


  et.type = NT_integer;
  neon_mixed_length (et, et.size / 2);
}
