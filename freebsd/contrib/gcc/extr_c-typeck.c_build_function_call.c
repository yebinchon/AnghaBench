
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ AGGREGATE_TYPE_P (scalar_t__) ;
 scalar_t__ BLOCK_POINTER_TYPE ;
 size_t BUILT_IN_TRAP ;
 int CALL_EXPR ;
 int COMPOUND_EXPR ;
 scalar_t__ CONVERT_EXPR ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ ERROR_MARK ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ FUNCTION_TYPE ;
 int IDENTIFIER_POINTER (scalar_t__) ;
 scalar_t__ NOP_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ POINTER_TYPE ;
 int STRIP_TYPE_NOPS (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_CONSTANT (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TREE_THIS_VOLATILE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_ARG_TYPES (scalar_t__) ;
 int TYPE_ATTRIBUTES (scalar_t__) ;
 scalar_t__ VOID_TYPE_P (scalar_t__) ;
 scalar_t__ build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_block_call (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_compound_literal (scalar_t__,int ) ;
 int build_constructor (scalar_t__,int ) ;
 scalar_t__* built_in_decls ;
 int check_function_arguments (int ,scalar_t__,int ) ;
 int comptypes (scalar_t__,scalar_t__) ;
 scalar_t__ convert_arguments (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int current_function_returns_abnormally ;
 int error (char*,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ fold_build3 (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold_build3_initializer (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold_convert (scalar_t__,int ) ;
 scalar_t__ function_to_pointer_conversion (scalar_t__) ;
 int inform (char*) ;
 int integer_zero_node ;
 scalar_t__ objc_rewrite_function_call (scalar_t__,scalar_t__) ;
 int pedwarn_init (char*) ;
 scalar_t__ require_complete_type (scalar_t__) ;
 scalar_t__ require_constant_value ;
 scalar_t__ resolve_overloaded_builtin (scalar_t__,scalar_t__) ;
 scalar_t__ strncmp (int ,char*,int) ;
 int warning (int ,char*) ;

tree
build_function_call (tree function, tree params)
{
  tree fntype, fundecl = 0;
  tree coerced_params;
  tree name = NULL_TREE, result;
  tree tem;


  STRIP_TYPE_NOPS (function);


  if (TREE_CODE (function) == FUNCTION_DECL)
    {




      tem = resolve_overloaded_builtin (function, params);
      if (tem)
 return tem;

      name = DECL_NAME (function);
      fundecl = function;
    }
  if (TREE_CODE (TREE_TYPE (function)) == FUNCTION_TYPE)
    function = function_to_pointer_conversion (function);



  function = objc_rewrite_function_call (function, params);

  fntype = TREE_TYPE (function);

  if (TREE_CODE (fntype) == ERROR_MARK)
    return error_mark_node;

  if (!((TREE_CODE (fntype) == POINTER_TYPE
   || TREE_CODE (fntype) == BLOCK_POINTER_TYPE)

 && TREE_CODE (TREE_TYPE (fntype)) == FUNCTION_TYPE))
    {
      error ("called object %qE is not a function", function);
      return error_mark_node;
    }

  if (fundecl && TREE_THIS_VOLATILE (fundecl))
    current_function_returns_abnormally = 1;


  fntype = TREE_TYPE (fntype);






  if ((TREE_CODE (function) == NOP_EXPR
       || TREE_CODE (function) == CONVERT_EXPR)
      && TREE_CODE (tem = TREE_OPERAND (function, 0)) == ADDR_EXPR
      && TREE_CODE (tem = TREE_OPERAND (tem, 0)) == FUNCTION_DECL
      && !comptypes (fntype, TREE_TYPE (tem)))
    {
      tree return_type = TREE_TYPE (fntype);
      tree trap = build_function_call (built_in_decls[BUILT_IN_TRAP],
           NULL_TREE);




      warning (0, "function called through a non-compatible type");



      inform ("if this code is reached, the program will abort");

      if (VOID_TYPE_P (return_type))
 return trap;
      else
 {
   tree rhs;

   if (AGGREGATE_TYPE_P (return_type))
     rhs = build_compound_literal (return_type,
       build_constructor (return_type, 0));
   else
     rhs = fold_convert (return_type, integer_zero_node);

   return build2 (COMPOUND_EXPR, return_type, trap, rhs);
 }
    }




  coerced_params
    = convert_arguments (TYPE_ARG_TYPES (fntype), params, function, fundecl);

  if (coerced_params == error_mark_node)
    return error_mark_node;



  check_function_arguments (TYPE_ATTRIBUTES (fntype), coerced_params,
       TYPE_ARG_TYPES (fntype));


  if (TREE_CODE (TREE_TYPE (function)) == BLOCK_POINTER_TYPE)
    result = build_block_call (fntype, function, coerced_params);
  else

  if (require_constant_value)
    {
      result = fold_build3_initializer (CALL_EXPR, TREE_TYPE (fntype),
     function, coerced_params, NULL_TREE);

      if (TREE_CONSTANT (result)
   && (name == NULL_TREE
       || strncmp (IDENTIFIER_POINTER (name), "__builtin_", 10) != 0))
 pedwarn_init ("initializer element is not constant");
    }
  else
    result = fold_build3 (CALL_EXPR, TREE_TYPE (fntype),
     function, coerced_params, NULL_TREE);

  if (VOID_TYPE_P (TREE_TYPE (result)))
    return result;
  return require_complete_type (result);
}
