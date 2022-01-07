
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct function_list {int * n_ctrs; int checksum; int ident; } ;


 unsigned int GCOV_COUNTERS ;
 int NULL_TREE ;
 int TREE_CHAIN (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_FIELDS (int ) ;
 int build_constructor_from_list (int ,int ) ;
 int build_int_cstu (int ,int ) ;
 int get_gcov_unsigned_t () ;
 int nreverse (int ) ;
 int prg_ctr_mask ;
 int tree_cons (int ,int ,int ) ;

__attribute__((used)) static tree
build_fn_info_value (const struct function_list *function, tree type)
{
  tree value = NULL_TREE;
  tree fields = TYPE_FIELDS (type);
  unsigned ix;
  tree array_value = NULL_TREE;


  value = tree_cons (fields, build_int_cstu (get_gcov_unsigned_t (),
          function->ident), value);
  fields = TREE_CHAIN (fields);


  value = tree_cons (fields, build_int_cstu (get_gcov_unsigned_t (),
          function->checksum), value);
  fields = TREE_CHAIN (fields);


  for (ix = 0; ix != GCOV_COUNTERS; ix++)
    if (prg_ctr_mask & (1 << ix))
      {
 tree counters = build_int_cstu (get_gcov_unsigned_t (),
     function->n_ctrs[ix]);

 array_value = tree_cons (NULL_TREE, counters, array_value);
      }


  array_value = build_constructor_from_list (TREE_TYPE (fields),
          nreverse (array_value));
  value = tree_cons (fields, array_value, value);


  value = build_constructor_from_list (type, nreverse (value));

  return value;
}
