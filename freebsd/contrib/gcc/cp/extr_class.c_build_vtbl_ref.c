
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int build_vtbl_ref_1 (int ,int ) ;

tree
build_vtbl_ref (tree instance, tree idx)
{
  tree aref = build_vtbl_ref_1 (instance, idx);

  return aref;
}
