
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct sorted_fields_type {scalar_t__* elts; } ;


 scalar_t__ ANON_AGGR_TYPE_P (int ) ;
 scalar_t__ FIELD_DECL ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (int ) ;

__attribute__((used)) static int
add_fields_to_record_type (tree fields, struct sorted_fields_type *field_vec, int idx)
{
  tree x;
  for (x = fields; x; x = TREE_CHAIN (x))
    {
      if (TREE_CODE (x) == FIELD_DECL && ANON_AGGR_TYPE_P (TREE_TYPE (x)))
 idx = add_fields_to_record_type (TYPE_FIELDS (TREE_TYPE (x)), field_vec, idx);
      else
 field_vec->elts[idx++] = x;
    }
  return idx;
}
