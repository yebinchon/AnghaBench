
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 int COMPLETE_TYPE_P (scalar_t__) ;
 scalar_t__ DECL_EXTERNAL (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_BEING_DEFINED (scalar_t__) ;
 scalar_t__ TYPE_LANG_SPECIFIC (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 int incomplete_vars ;
 int processing_template_decl ;
 int tree_cons (scalar_t__,scalar_t__,int ) ;

void
maybe_register_incomplete_var (tree var)
{
  gcc_assert (TREE_CODE (var) == VAR_DECL);


  if (!processing_template_decl && TREE_TYPE (var) != error_mark_node
      && DECL_EXTERNAL (var))
    {
      tree inner_type = TREE_TYPE (var);

      while (TREE_CODE (inner_type) == ARRAY_TYPE)
 inner_type = TREE_TYPE (inner_type);
      inner_type = TYPE_MAIN_VARIANT (inner_type);

      if ((!COMPLETE_TYPE_P (inner_type) && CLASS_TYPE_P (inner_type))

   || (TYPE_LANG_SPECIFIC (inner_type)
       && TYPE_BEING_DEFINED (inner_type)))
 incomplete_vars = tree_cons (inner_type, var, incomplete_vars);
    }
}
