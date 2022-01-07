
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_PURPOSE (scalar_t__) ;
 int htab_find_with_hash (int ,scalar_t__,int ) ;
 int htab_hash_pointer (scalar_t__) ;
 int local_specializations ;

__attribute__((used)) static tree
retrieve_local_specialization (tree tmpl)
{
  tree spec = (tree) htab_find_with_hash (local_specializations, tmpl,
       htab_hash_pointer (tmpl));
  return spec ? TREE_PURPOSE (spec) : NULL_TREE;
}
