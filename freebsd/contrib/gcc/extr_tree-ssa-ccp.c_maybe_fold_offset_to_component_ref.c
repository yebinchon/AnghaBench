
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ (* types_compatible_p ) (scalar_t__,scalar_t__) ;} ;


 int AGGREGATE_TYPE_P (scalar_t__) ;
 scalar_t__ ARRAY_TYPE ;
 int COMPONENT_REF ;
 scalar_t__ DECL_BIT_FIELD (scalar_t__) ;
 int DECL_FIELD_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_SIZE_UNIT (scalar_t__) ;
 scalar_t__ FIELD_DECL ;
 int INDIRECT_REF ;
 scalar_t__ INTEGER_CST ;
 int MINUS_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ QUAL_UNION_TYPE ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 scalar_t__ UNION_TYPE ;
 scalar_t__ build1 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ build3 (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ byte_position (scalar_t__) ;
 scalar_t__ int_const_binop (int ,scalar_t__,scalar_t__,int) ;
 TYPE_1__ lang_hooks ;
 scalar_t__ maybe_fold_offset_to_array_ref (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ stub1 (scalar_t__,scalar_t__) ;
 scalar_t__ stub2 (scalar_t__,scalar_t__) ;
 int tree_int_cst_compare (scalar_t__,scalar_t__) ;
 int tree_int_cst_lt (scalar_t__,scalar_t__) ;

__attribute__((used)) static tree
maybe_fold_offset_to_component_ref (tree record_type, tree base, tree offset,
        tree orig_type, bool base_is_ptr)
{
  tree f, t, field_type, tail_array_field, field_offset;

  if (TREE_CODE (record_type) != RECORD_TYPE
      && TREE_CODE (record_type) != UNION_TYPE
      && TREE_CODE (record_type) != QUAL_UNION_TYPE)
    return NULL_TREE;


  if (lang_hooks.types_compatible_p (record_type, orig_type))
    return NULL_TREE;

  tail_array_field = NULL_TREE;
  for (f = TYPE_FIELDS (record_type); f ; f = TREE_CHAIN (f))
    {
      int cmp;

      if (TREE_CODE (f) != FIELD_DECL)
 continue;
      if (DECL_BIT_FIELD (f))
 continue;

      field_offset = byte_position (f);
      if (TREE_CODE (field_offset) != INTEGER_CST)
 continue;




      if (!DECL_FIELD_CONTEXT (f))
 continue;


      tail_array_field = NULL_TREE;


      cmp = tree_int_cst_compare (field_offset, offset);
      if (cmp > 0)
 continue;

      field_type = TREE_TYPE (f);



      if (cmp == 0
   && lang_hooks.types_compatible_p (orig_type, field_type))
 {
   if (base_is_ptr)
     base = build1 (INDIRECT_REF, record_type, base);
   t = build3 (COMPONENT_REF, field_type, base, f, NULL_TREE);
   return t;
 }


      if (!AGGREGATE_TYPE_P (field_type))
 continue;




      if (TREE_CODE (field_type) == ARRAY_TYPE)
 tail_array_field = f;


      if (!DECL_SIZE_UNIT (f)
   || TREE_CODE (DECL_SIZE_UNIT (f)) != INTEGER_CST)
 continue;
      t = int_const_binop (MINUS_EXPR, offset, field_offset, 1);
      if (!tree_int_cst_lt (t, DECL_SIZE_UNIT (f)))
 continue;



      offset = t;
      goto found;
    }

  if (!tail_array_field)
    return NULL_TREE;

  f = tail_array_field;
  field_type = TREE_TYPE (f);
  offset = int_const_binop (MINUS_EXPR, offset, byte_position (f), 1);

 found:


  if (base_is_ptr)
    base = build1 (INDIRECT_REF, record_type, base);
  base = build3 (COMPONENT_REF, field_type, base, f, NULL_TREE);

  t = maybe_fold_offset_to_array_ref (base, offset, orig_type);
  if (t)
    return t;
  return maybe_fold_offset_to_component_ref (field_type, base, offset,
          orig_type, 0);
}
