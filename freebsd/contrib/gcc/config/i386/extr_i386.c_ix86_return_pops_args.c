
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int GET_MODE_SIZE (int ) ;
 scalar_t__ IDENTIFIER_NODE ;
 int KEEP_AGGREGATE_RETURN_POINTER ;
 scalar_t__ NULL_TREE ;
 int Pmode ;
 int TARGET_64BIT ;
 scalar_t__ TARGET_RTD ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TREE_VALUE (int ) ;
 scalar_t__ TYPE_ARG_TYPES (int ) ;
 int TYPE_ATTRIBUTES (int ) ;
 scalar_t__ aggregate_value_p (int ,int ) ;
 int ix86_function_regparm (int ,int ) ;
 scalar_t__ lookup_attribute (char*,int ) ;
 int tree_last (scalar_t__) ;
 scalar_t__ void_type_node ;

int
ix86_return_pops_args (tree fundecl, tree funtype, int size)
{
  int rtd = TARGET_RTD && (!fundecl || TREE_CODE (fundecl) != IDENTIFIER_NODE);


  if (! lookup_attribute ("cdecl", TYPE_ATTRIBUTES (funtype))) {



    if (lookup_attribute ("stdcall", TYPE_ATTRIBUTES (funtype))
        || lookup_attribute ("fastcall", TYPE_ATTRIBUTES (funtype)))
      rtd = 1;

    if (rtd
        && (TYPE_ARG_TYPES (funtype) == NULL_TREE
     || (TREE_VALUE (tree_last (TYPE_ARG_TYPES (funtype)))
  == void_type_node)))
      return size;
  }


  if (aggregate_value_p (TREE_TYPE (funtype), fundecl)
      && !TARGET_64BIT
      && !KEEP_AGGREGATE_RETURN_POINTER)
    {
      int nregs = ix86_function_regparm (funtype, fundecl);

      if (!nregs)
 return GET_MODE_SIZE (Pmode);
    }

  return 0;
}
