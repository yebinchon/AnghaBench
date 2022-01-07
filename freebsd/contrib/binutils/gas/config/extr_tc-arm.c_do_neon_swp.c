
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;


 int NS_DD ;
 int NS_NULL ;
 int NS_QQ ;
 int neon_quad (int) ;
 int neon_select_shape (int ,int ,int ) ;
 int neon_two_same (int ,int,int) ;

__attribute__((used)) static void
do_neon_swp (void)
{
  enum neon_shape rs = neon_select_shape (NS_DD, NS_QQ, NS_NULL);
  neon_two_same (neon_quad (rs), 1, -1);
}
