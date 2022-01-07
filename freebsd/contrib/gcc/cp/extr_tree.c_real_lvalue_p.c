
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cp_lvalue_kind ;


 int lvalue_p_1 (int ,int ) ;

cp_lvalue_kind
real_lvalue_p (tree ref)
{
  return lvalue_p_1 (ref,
                                          0);
}
