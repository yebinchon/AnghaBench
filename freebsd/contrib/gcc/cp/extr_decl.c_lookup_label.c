
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ IDENTIFIER_LABEL_VALUE (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 int POP_TIMEVAR_AND_RETURN (int ,scalar_t__) ;
 int TV_NAME_LOOKUP ;
 scalar_t__ current_function_decl ;
 int error (char*,scalar_t__) ;
 scalar_t__ make_label_decl (scalar_t__,int ) ;
 int timevar_push (int ) ;

tree
lookup_label (tree id)
{
  tree decl;

  timevar_push (TV_NAME_LOOKUP);

  if (current_function_decl == NULL_TREE)
    {
      error ("label %qE referenced outside of any function", id);
      POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, NULL_TREE);
    }


  decl = IDENTIFIER_LABEL_VALUE (id);
  if (decl != NULL_TREE && DECL_CONTEXT (decl) == current_function_decl)
    POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, decl);

  decl = make_label_decl (id, 0);
  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, decl);
}
