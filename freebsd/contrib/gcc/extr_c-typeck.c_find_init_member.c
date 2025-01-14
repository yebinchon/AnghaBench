
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct init_node {scalar_t__ purpose; scalar_t__ value; struct init_node* right; struct init_node* left; } ;
struct TYPE_2__ {scalar_t__ index; scalar_t__ value; } ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ UNION_TYPE ;
 int VEC_empty (int ,int ) ;
 TYPE_1__* VEC_last (int ,int ) ;
 scalar_t__ bit_position (scalar_t__) ;
 int constructor_elements ;
 int constructor_elt ;
 scalar_t__ constructor_incremental ;
 struct init_node* constructor_pending_elts ;
 int constructor_type ;
 scalar_t__ constructor_unfilled_fields ;
 scalar_t__ constructor_unfilled_index ;
 int set_nonincremental_init () ;
 scalar_t__ tree_int_cst_lt (scalar_t__,scalar_t__) ;

__attribute__((used)) static tree
find_init_member (tree field)
{
  struct init_node *p;

  if (TREE_CODE (constructor_type) == ARRAY_TYPE)
    {
      if (constructor_incremental
   && tree_int_cst_lt (field, constructor_unfilled_index))
 set_nonincremental_init ();

      p = constructor_pending_elts;
      while (p)
 {
   if (tree_int_cst_lt (field, p->purpose))
     p = p->left;
   else if (tree_int_cst_lt (p->purpose, field))
     p = p->right;
   else
     return p->value;
 }
    }
  else if (TREE_CODE (constructor_type) == RECORD_TYPE)
    {
      tree bitpos = bit_position (field);

      if (constructor_incremental
   && (!constructor_unfilled_fields
       || tree_int_cst_lt (bitpos,
      bit_position (constructor_unfilled_fields))))
 set_nonincremental_init ();

      p = constructor_pending_elts;
      while (p)
 {
   if (field == p->purpose)
     return p->value;
   else if (tree_int_cst_lt (bitpos, bit_position (p->purpose)))
     p = p->left;
   else
     p = p->right;
 }
    }
  else if (TREE_CODE (constructor_type) == UNION_TYPE)
    {
      if (!VEC_empty (constructor_elt, constructor_elements)
   && (VEC_last (constructor_elt, constructor_elements)->index
       == field))
 return VEC_last (constructor_elt, constructor_elements)->value;
    }
  return 0;
}
