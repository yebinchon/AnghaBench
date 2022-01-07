
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct constant_descriptor_tree {int rtl; int hash; int value; } ;
typedef int rtx ;


 int NULL_RTX ;
 int const_desc_htab ;
 int const_hash_1 (int ) ;
 struct constant_descriptor_tree* htab_find_with_hash (int ,struct constant_descriptor_tree*,int ) ;

rtx
lookup_constant_def (tree exp)
{
  struct constant_descriptor_tree *desc;
  struct constant_descriptor_tree key;

  key.value = exp;
  key.hash = const_hash_1 (exp);
  desc = htab_find_with_hash (const_desc_htab, &key, key.hash);

  return (desc ? desc->rtl : NULL_RTX);
}
