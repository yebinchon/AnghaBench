
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BLOCK_POINTER_TYPE ;
 scalar_t__ DECL_INLINE (scalar_t__) ;
 scalar_t__ DECL_MAIN_P (scalar_t__) ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ FUNCTION_TYPE ;
 int LOOKUP_NORMAL ;
 scalar_t__ METHOD_TYPE ;
 scalar_t__ NOP_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ TEMPLATE_ID_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_ARG_TYPES (scalar_t__) ;
 int TYPE_ATTRIBUTES (scalar_t__) ;
 scalar_t__ TYPE_PTRMEMFUNC_P (scalar_t__) ;
 scalar_t__ build_addr_func (scalar_t__) ;
 scalar_t__ build_block_call (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_cxx_call (scalar_t__,scalar_t__) ;
 int check_function_arguments (int ,scalar_t__,int ) ;
 scalar_t__ convert_arguments (int ,scalar_t__,scalar_t__,int ,int) ;
 int error (char*,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ inline_conversion (scalar_t__) ;
 int mark_used (scalar_t__) ;
 scalar_t__ objc_rewrite_function_call (scalar_t__,scalar_t__) ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;

tree
build_function_call (tree function, tree params)
{
  tree fntype, fndecl;
  tree coerced_params;
  tree name = NULL_TREE;
  int is_method;
  tree original = function;



  function = objc_rewrite_function_call (function, params);



  if (TREE_CODE (function) == NOP_EXPR
      && TREE_TYPE (function) == TREE_TYPE (TREE_OPERAND (function, 0)))
    function = TREE_OPERAND (function, 0);

  if (TREE_CODE (function) == FUNCTION_DECL)
    {
      name = DECL_NAME (function);

      mark_used (function);
      fndecl = function;


      if (pedantic && DECL_MAIN_P (function))
 pedwarn ("ISO C++ forbids calling %<::main%> from within program");





      if (DECL_INLINE (function))
 function = inline_conversion (function);
      else
 function = build_addr_func (function);
    }
  else
    {
      fndecl = NULL_TREE;

      function = build_addr_func (function);
    }

  if (function == error_mark_node)
    return error_mark_node;

  fntype = TREE_TYPE (function);

  if (TYPE_PTRMEMFUNC_P (fntype))
    {
      error ("must use %<.*%> or %<->*%> to call pointer-to-member "
      "function in %<%E (...)%>",
      original);
      return error_mark_node;
    }

  is_method = (TREE_CODE (fntype) == POINTER_TYPE
        && TREE_CODE (TREE_TYPE (fntype)) == METHOD_TYPE);


  if (!(((TREE_CODE (fntype) == POINTER_TYPE || TREE_CODE (fntype) == BLOCK_POINTER_TYPE)
  && TREE_CODE (TREE_TYPE (fntype)) == FUNCTION_TYPE)
 || is_method
 || TREE_CODE (function) == TEMPLATE_ID_EXPR))
    {
      error ("%qE cannot be used as a function", original);
      return error_mark_node;
    }


  fntype = TREE_TYPE (fntype);





  coerced_params = convert_arguments (TYPE_ARG_TYPES (fntype),
          params, fndecl, LOOKUP_NORMAL,
          (TREE_CODE (TREE_TYPE (function)) == BLOCK_POINTER_TYPE));

  if (coerced_params == error_mark_node)
    return error_mark_node;




  check_function_arguments (TYPE_ATTRIBUTES (fntype), coerced_params,
       TYPE_ARG_TYPES (fntype));

  if (TREE_CODE (TREE_TYPE (function)) == BLOCK_POINTER_TYPE)
    return build_block_call (fntype, function, coerced_params);


  return build_cxx_call (function, coerced_params);
}
