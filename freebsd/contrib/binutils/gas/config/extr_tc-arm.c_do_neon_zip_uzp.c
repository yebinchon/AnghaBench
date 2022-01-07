
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neon_type_el {int size; } ;
typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_2__ {int instruction; } ;


 int NS_DD ;
 int NS_NULL ;
 int NS_QQ ;
 int N_16 ;
 int N_32 ;
 int N_8 ;
 int N_EQK ;
 int N_KEY ;
 int N_MNEM_vtrn ;
 int do_neon_trn () ;
 TYPE_1__ inst ;
 struct neon_type_el neon_check_type (int,int,int ,int) ;
 int neon_quad (int) ;
 int neon_select_shape (int,int ,int ) ;
 int neon_two_same (int ,int,int) ;

__attribute__((used)) static void
do_neon_zip_uzp (void)
{
  enum neon_shape rs = neon_select_shape (NS_DD, NS_QQ, NS_NULL);
  struct neon_type_el et = neon_check_type (2, rs,
    N_EQK, N_8 | N_16 | N_32 | N_KEY);
  if (rs == NS_DD && et.size == 32)
    {

      inst.instruction = N_MNEM_vtrn;
      do_neon_trn ();
      return;
    }
  neon_two_same (neon_quad (rs), 1, et.size);
}
