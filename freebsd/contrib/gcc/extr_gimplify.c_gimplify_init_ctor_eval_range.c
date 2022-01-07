
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ARRAY_REF ;
 int COND_EXPR ;
 scalar_t__ CONSTRUCTOR ;
 int CONSTRUCTOR_ELTS (int ) ;
 int EQ_EXPR ;
 int GOTO_EXPR ;
 int LABEL_EXPR ;
 int MODIFY_EXPR ;
 int NULL_TREE ;
 int PLUS_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int append_to_statement_list (int ,int *) ;
 int boolean_type_node ;
 int build1 (int ,int ,int ) ;
 int build2 (int ,int ,int ,int ) ;
 int build3 (int ,int ,int ,int ,int ) ;
 int build4 (int ,int ,int ,int ,int ,int ) ;
 int create_artificial_label () ;
 int create_tmp_var (int ,int *) ;
 int fold_convert (int ,int ) ;
 int gimplify_and_add (int ,int *) ;
 int gimplify_init_ctor_eval (int ,int ,int *,int) ;
 int integer_one_node ;
 int unshare_expr (int ) ;
 int void_type_node ;

__attribute__((used)) static void
gimplify_init_ctor_eval_range (tree object, tree lower, tree upper,
          tree value, tree array_elt_type,
          tree *pre_p, bool cleared)
{
  tree loop_entry_label, loop_exit_label;
  tree var, var_type, cref;

  loop_entry_label = create_artificial_label ();
  loop_exit_label = create_artificial_label ();


  var_type = TREE_TYPE (upper);
  var = create_tmp_var (var_type, ((void*)0));
  append_to_statement_list (build2 (MODIFY_EXPR, var_type, var, lower), pre_p);


  append_to_statement_list (build1 (LABEL_EXPR,
        void_type_node,
        loop_entry_label),
       pre_p);


  cref = build4 (ARRAY_REF, array_elt_type, unshare_expr (object),
   var, NULL_TREE, NULL_TREE);




  if (TREE_CODE (value) == CONSTRUCTOR)


    gimplify_init_ctor_eval (cref, CONSTRUCTOR_ELTS (value),
        pre_p, cleared);
  else
    append_to_statement_list (build2 (MODIFY_EXPR, TREE_TYPE (cref),
          cref, value),
         pre_p);


  gimplify_and_add (build3 (COND_EXPR, void_type_node,
       build2 (EQ_EXPR, boolean_type_node,
        var, upper),
       build1 (GOTO_EXPR,
        void_type_node,
        loop_exit_label),
       NULL_TREE),
      pre_p);


  append_to_statement_list (build2 (MODIFY_EXPR, var_type, var,
        build2 (PLUS_EXPR, var_type, var,
         fold_convert (var_type,
         integer_one_node))),
       pre_p);


  append_to_statement_list (build1 (GOTO_EXPR,
        void_type_node,
        loop_entry_label),
       pre_p);


  append_to_statement_list (build1 (LABEL_EXPR,
        void_type_node,
        loop_exit_label),
       pre_p);
}
