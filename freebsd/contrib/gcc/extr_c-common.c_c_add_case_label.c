
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int splay_tree_value ;
typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
typedef TYPE_2__* splay_tree ;
struct TYPE_12__ {int root; } ;
struct TYPE_11__ {scalar_t__ value; scalar_t__ key; } ;


 scalar_t__ CASE_HIGH (scalar_t__) ;
 scalar_t__ CASE_LABEL (scalar_t__) ;
 int LABEL_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ add_stmt (int ) ;
 int build_case_label (scalar_t__,scalar_t__,scalar_t__) ;
 int build_stmt (int ,scalar_t__) ;
 int check_case_bounds (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ check_case_value (scalar_t__) ;
 scalar_t__ convert_and_check (scalar_t__,scalar_t__) ;
 scalar_t__ create_artificial_label () ;
 int error (char*,...) ;
 scalar_t__ error_mark_node ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 int splay_tree_insert (TYPE_2__*,int ,int ) ;
 TYPE_1__* splay_tree_lookup (TYPE_2__*,int ) ;
 TYPE_1__* splay_tree_predecessor (TYPE_2__*,int ) ;
 TYPE_1__* splay_tree_successor (TYPE_2__*,int ) ;
 scalar_t__ tree_int_cst_compare (scalar_t__,scalar_t__) ;
 scalar_t__ tree_int_cst_equal (scalar_t__,scalar_t__) ;
 int tree_int_cst_lt (scalar_t__,scalar_t__) ;
 int warning (int ,char*) ;

tree
c_add_case_label (splay_tree cases, tree cond, tree orig_type,
    tree low_value, tree high_value)
{
  tree type;
  tree label;
  tree case_label;
  splay_tree_node node;


  label = create_artificial_label ();



  if (!cond || cond == error_mark_node)
    goto error_out;

  if ((low_value && TREE_TYPE (low_value)
       && POINTER_TYPE_P (TREE_TYPE (low_value)))
      || (high_value && TREE_TYPE (high_value)
   && POINTER_TYPE_P (TREE_TYPE (high_value))))
    {
      error ("pointers are not permitted as case values");
      goto error_out;
    }


  if (high_value && pedantic)
    pedwarn ("range expressions in switch statements are non-standard");

  type = TREE_TYPE (cond);
  if (low_value)
    {
      low_value = check_case_value (low_value);
      low_value = convert_and_check (type, low_value);
      if (low_value == error_mark_node)
 goto error_out;
    }
  if (high_value)
    {
      high_value = check_case_value (high_value);
      high_value = convert_and_check (type, high_value);
      if (high_value == error_mark_node)
 goto error_out;
    }

  if (low_value && high_value)
    {



      if (tree_int_cst_equal (low_value, high_value))
 high_value = NULL_TREE;
      else if (!tree_int_cst_lt (low_value, high_value))
 warning (0, "empty range specified");
    }




  if (low_value
      && !check_case_bounds (type, orig_type,
        &low_value, high_value ? &high_value : ((void*)0)))
    return NULL_TREE;



  node = splay_tree_lookup (cases, (splay_tree_key) low_value);



  if (!node && (low_value || high_value))
    {
      splay_tree_node low_bound;
      splay_tree_node high_bound;
      low_bound = splay_tree_predecessor (cases,
       (splay_tree_key) low_value);
      high_bound = splay_tree_successor (cases,
      (splay_tree_key) low_value);




      if (low_bound
   && CASE_HIGH ((tree) low_bound->value)
   && tree_int_cst_compare (CASE_HIGH ((tree) low_bound->value),
        low_value) >= 0)
 node = low_bound;




      else if (high_bound
        && high_value
        && (tree_int_cst_compare ((tree) high_bound->key,
      high_value)
     <= 0))
 node = high_bound;
    }

  if (node)
    {
      tree duplicate = CASE_LABEL ((tree) node->value);

      if (high_value)
 {
   error ("duplicate (or overlapping) case value");
   error ("%Jthis is the first entry overlapping that value", duplicate);
 }
      else if (low_value)
 {
   error ("duplicate case value") ;
   error ("%Jpreviously used here", duplicate);
 }
      else
 {
   error ("multiple default labels in one switch");
   error ("%Jthis is the first default label", duplicate);
 }
      goto error_out;
    }


  case_label = add_stmt (build_case_label (low_value, high_value, label));

  splay_tree_insert (cases,
       (splay_tree_key) low_value,
       (splay_tree_value) case_label);

  return case_label;

 error_out:



  if (!cases->root)
    {
      tree t = create_artificial_label ();
      add_stmt (build_stmt (LABEL_EXPR, t));
    }
  return error_mark_node;
}
