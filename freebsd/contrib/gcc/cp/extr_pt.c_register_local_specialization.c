
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int INSERT ;
 void* build_tree_list (int ,int ) ;
 void** htab_find_slot_with_hash (int ,int ,int ,int ) ;
 int htab_hash_pointer (int ) ;
 int local_specializations ;

__attribute__((used)) static void
register_local_specialization (tree spec, tree tmpl)
{
  void **slot;

  slot = htab_find_slot_with_hash (local_specializations, tmpl,
       htab_hash_pointer (tmpl), INSERT);
  *slot = build_tree_list (spec, tmpl);
}
