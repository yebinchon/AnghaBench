
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct case_node {struct case_node* right; int * left; int parent; scalar_t__ code_label; void* high; void* low; } ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_INT_CST_HIGH (scalar_t__) ;
 int TREE_INT_CST_LOW (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MAX_VALUE (scalar_t__) ;
 scalar_t__ TYPE_MIN_VALUE (scalar_t__) ;
 void* build_int_cst_wide (int ,int ,int ) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 int gcc_assert (int) ;
 struct case_node* ggc_alloc (int) ;
 scalar_t__ tree_int_cst_compare (scalar_t__,scalar_t__) ;
 scalar_t__ tree_int_cst_equal (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct case_node *
add_case_node (struct case_node *head, tree type, tree low, tree high,
        tree label)
{
  tree min_value, max_value;
  struct case_node *r;

  gcc_assert (TREE_CODE (low) == INTEGER_CST);
  gcc_assert (!high || TREE_CODE (high) == INTEGER_CST);

  min_value = TYPE_MIN_VALUE (type);
  max_value = TYPE_MAX_VALUE (type);





  if (!high || tree_int_cst_equal (low, high))
    {

      if ((TREE_CODE (min_value) == INTEGER_CST
            && tree_int_cst_compare (low, min_value) < 0)
   || (TREE_CODE (max_value) == INTEGER_CST
       && tree_int_cst_compare (low, max_value) > 0))
 return head;
      low = fold_convert (type, low);
      high = low;
    }
  else
    {

      if ((TREE_CODE (min_value) == INTEGER_CST
            && tree_int_cst_compare (high, min_value) < 0)
   || (TREE_CODE (max_value) == INTEGER_CST
       && tree_int_cst_compare (low, max_value) > 0))
 return head;



      if (TREE_CODE (min_value) == INTEGER_CST
            && tree_int_cst_compare (low, min_value) < 0)
 low = min_value;
      low = fold_convert (type, low);



      if (TREE_CODE (max_value) == INTEGER_CST
   && tree_int_cst_compare (high, max_value) > 0)
 high = max_value;
      high = fold_convert (type, high);
    }



  r = ggc_alloc (sizeof (struct case_node));
  r->low = build_int_cst_wide (TREE_TYPE (low), TREE_INT_CST_LOW (low),
          TREE_INT_CST_HIGH (low));
  r->high = build_int_cst_wide (TREE_TYPE (high), TREE_INT_CST_LOW (high),
    TREE_INT_CST_HIGH (high));
  r->code_label = label;
  r->parent = r->left = ((void*)0);
  r->right = head;
  return r;
}
