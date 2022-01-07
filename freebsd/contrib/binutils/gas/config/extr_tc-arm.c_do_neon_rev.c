
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neon_type_el {unsigned int size; } ;
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
 int _ (char*) ;
 int assert (int) ;
 int constraint (int,int ) ;
 TYPE_1__ inst ;
 struct neon_type_el neon_check_type (int,int,int ,int) ;
 int neon_quad (int) ;
 int neon_select_shape (int ,int ,int ) ;
 int neon_two_same (int ,int,unsigned int) ;

__attribute__((used)) static void
do_neon_rev (void)
{
  enum neon_shape rs = neon_select_shape (NS_DD, NS_QQ, NS_NULL);
  struct neon_type_el et = neon_check_type (2, rs,
    N_EQK, N_8 | N_16 | N_32 | N_KEY);
  unsigned op = (inst.instruction >> 7) & 3;



  unsigned elsize = (op == 2) ? 16 : (op == 1) ? 32 : (op == 0) ? 64 : 0;
  assert (elsize != 0);
  constraint (et.size >= elsize,
              _("elements must be smaller than reversal region"));
  neon_two_same (neon_quad (rs), 1, et.size);
}
