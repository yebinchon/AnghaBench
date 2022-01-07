
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neon_type_el {scalar_t__ type; int size; } ;
typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_2__ {int instruction; } ;


 int NS_DD ;
 int NS_NULL ;
 int NS_QQ ;
 scalar_t__ NT_unsigned ;
 int N_EQK ;
 int N_KEY ;
 int N_SU_32 ;
 TYPE_1__ inst ;
 struct neon_type_el neon_check_type (int,int,int ,int) ;
 int neon_quad (int) ;
 int neon_select_shape (int ,int ,int ) ;
 int neon_two_same (int ,int,int ) ;

__attribute__((used)) static void
do_neon_pair_long (void)
{
  enum neon_shape rs = neon_select_shape (NS_DD, NS_QQ, NS_NULL);
  struct neon_type_el et = neon_check_type (2, rs, N_EQK, N_SU_32 | N_KEY);

  inst.instruction |= (et.type == NT_unsigned) << 7;
  neon_two_same (neon_quad (rs), 1, et.size);
}
