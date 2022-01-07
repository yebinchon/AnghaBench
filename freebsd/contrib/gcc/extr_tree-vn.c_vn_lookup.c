
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int shared_vuses_from_stmt (int ) ;
 int vn_lookup_with_vuses (int ,int ) ;

tree
vn_lookup (tree expr, tree stmt)
{
  return vn_lookup_with_vuses (expr, shared_vuses_from_stmt (stmt));
}
