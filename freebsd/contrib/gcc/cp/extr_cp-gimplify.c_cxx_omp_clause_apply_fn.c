
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 int ARRAY_REF ;
 scalar_t__ ARRAY_TYPE ;
 int COND_EXPR ;
 int LABEL_EXPR ;
 int MODIFY_EXPR ;
 int NE_EXPR ;
 int PLUS_EXPR ;
 int * TREE_CHAIN (int *) ;
 scalar_t__ TREE_CODE (int *) ;
 int TREE_PURPOSE (int *) ;
 int * TREE_TYPE (int *) ;
 int TREE_VALUE (int *) ;
 int * TYPE_ARG_TYPES (int *) ;
 int * TYPE_SIZE_UNIT (int *) ;
 int append_to_statement_list (int *,int **) ;
 int * boolean_type_node ;
 int * build1 (int ,int *,int *) ;
 int * build2 (int ,int *,int *,int *) ;
 int * build3 (int ,int *,int *,int ,int *) ;
 int * build4 (int ,int *,int *,int ,int *,int *) ;
 int build_and_jump (int **) ;
 int * build_call (int *,int ) ;
 int * build_fold_addr_expr (int *) ;
 int * convert_default_arg (int ,int ,int *,int ) ;
 int * create_artificial_label () ;
 int * create_tmp_var (int *,int *) ;
 int * fold_convert (int *,int *) ;
 int nreverse (int *) ;
 int size_zero_node ;
 int * tree_cons (int *,int *,int *) ;
 int * void_list_node ;
 int * void_type_node ;

__attribute__((used)) static tree
cxx_omp_clause_apply_fn (tree fn, tree arg1, tree arg2)
{
  tree defparm, parm;
  int i;

  if (fn == ((void*)0))
    return ((void*)0);

  defparm = TREE_CHAIN (TYPE_ARG_TYPES (TREE_TYPE (fn)));
  if (arg2)
    defparm = TREE_CHAIN (defparm);

  if (TREE_CODE (TREE_TYPE (arg1)) == ARRAY_TYPE)
    {
      tree inner_type = TREE_TYPE (arg1);
      tree start1, end1, p1;
      tree start2 = ((void*)0), p2 = ((void*)0);
      tree ret = ((void*)0), lab, t;

      start1 = arg1;
      start2 = arg2;
      do
 {
   inner_type = TREE_TYPE (inner_type);
   start1 = build4 (ARRAY_REF, inner_type, start1,
      size_zero_node, ((void*)0), ((void*)0));
   if (arg2)
     start2 = build4 (ARRAY_REF, inner_type, start2,
        size_zero_node, ((void*)0), ((void*)0));
 }
      while (TREE_CODE (inner_type) == ARRAY_TYPE);
      start1 = build_fold_addr_expr (start1);
      if (arg2)
 start2 = build_fold_addr_expr (start2);

      end1 = TYPE_SIZE_UNIT (TREE_TYPE (arg1));
      end1 = fold_convert (TREE_TYPE (start1), end1);
      end1 = build2 (PLUS_EXPR, TREE_TYPE (start1), start1, end1);

      p1 = create_tmp_var (TREE_TYPE (start1), ((void*)0));
      t = build2 (MODIFY_EXPR, void_type_node, p1, start1);
      append_to_statement_list (t, &ret);

      if (arg2)
 {
   p2 = create_tmp_var (TREE_TYPE (start2), ((void*)0));
   t = build2 (MODIFY_EXPR, void_type_node, p2, start2);
   append_to_statement_list (t, &ret);
 }

      lab = create_artificial_label ();
      t = build1 (LABEL_EXPR, void_type_node, lab);
      append_to_statement_list (t, &ret);

      t = tree_cons (((void*)0), p1, ((void*)0));
      if (arg2)
 t = tree_cons (((void*)0), p2, t);

      i = 1 + (arg2 != ((void*)0));
      for (parm = defparm; parm != void_list_node; parm = TREE_CHAIN (parm))
 t = tree_cons (((void*)0), convert_default_arg (TREE_VALUE (parm),
        TREE_PURPOSE (parm),
        fn, i++), t);
      t = build_call (fn, nreverse (t));
      append_to_statement_list (t, &ret);

      t = fold_convert (TREE_TYPE (p1), TYPE_SIZE_UNIT (inner_type));
      t = build2 (PLUS_EXPR, TREE_TYPE (p1), p1, t);
      t = build2 (MODIFY_EXPR, void_type_node, p1, t);
      append_to_statement_list (t, &ret);

      if (arg2)
 {
   t = fold_convert (TREE_TYPE (p2), TYPE_SIZE_UNIT (inner_type));
   t = build2 (PLUS_EXPR, TREE_TYPE (p2), p2, t);
   t = build2 (MODIFY_EXPR, void_type_node, p2, t);
   append_to_statement_list (t, &ret);
 }

      t = build2 (NE_EXPR, boolean_type_node, p1, end1);
      t = build3 (COND_EXPR, void_type_node, t, build_and_jump (&lab), ((void*)0));
      append_to_statement_list (t, &ret);

      return ret;
    }
  else
    {
      tree t = tree_cons (((void*)0), build_fold_addr_expr (arg1), ((void*)0));
      if (arg2)
 t = tree_cons (((void*)0), build_fold_addr_expr (arg2), t);

      i = 1 + (arg2 != ((void*)0));
      for (parm = defparm; parm != void_list_node; parm = TREE_CHAIN (parm))
 t = tree_cons (((void*)0), convert_default_arg (TREE_VALUE (parm),
        TREE_PURPOSE (parm),
        fn, i++), t);
      return build_call (fn, nreverse (t));
    }
}
