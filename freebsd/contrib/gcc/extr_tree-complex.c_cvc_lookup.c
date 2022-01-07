
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
struct int_tree_map {unsigned int uid; int * to; } ;


 int complex_variable_components ;
 struct int_tree_map* htab_find_with_hash (int ,struct int_tree_map*,unsigned int) ;

__attribute__((used)) static tree
cvc_lookup (unsigned int uid)
{
  struct int_tree_map *h, in;
  in.uid = uid;
  h = htab_find_with_hash (complex_variable_components, &in, uid);
  return h ? h->to : ((void*)0);
}
