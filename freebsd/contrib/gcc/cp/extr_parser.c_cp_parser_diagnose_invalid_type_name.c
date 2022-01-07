
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_5__ {scalar_t__ scope; } ;
typedef TYPE_1__ cp_parser ;


 scalar_t__ BINFO_TYPE (scalar_t__) ;
 scalar_t__ BIT_NOT_EXPR ;
 scalar_t__ CLASSTYPE_PRIMARY_TEMPLATE_TYPE (scalar_t__) ;
 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_BINFO (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 scalar_t__ TYPE_P (char*) ;
 int cp_parser_commit_to_tentative_parse (TYPE_1__*) ;
 scalar_t__ cp_parser_lookup_name_simple (TYPE_1__*,scalar_t__) ;
 scalar_t__ current_class_type ;
 scalar_t__ dependent_type_p (scalar_t__) ;
 int error (char*,...) ;
 scalar_t__ error_mark_node ;
 int gcc_unreachable () ;
 int inform (char*,scalar_t__,scalar_t__) ;
 scalar_t__ processing_template_decl ;

__attribute__((used)) static void
cp_parser_diagnose_invalid_type_name (cp_parser *parser, tree scope, tree id)
{
  tree decl, old_scope;

  old_scope = parser->scope;
  parser->scope = scope;
  decl = cp_parser_lookup_name_simple (parser, id);
  parser->scope = old_scope;


  if (TREE_CODE (decl) == TEMPLATE_DECL)
    error ("invalid use of template-name %qE without an argument list", decl);
  else if (TREE_CODE (id) == BIT_NOT_EXPR)
    error ("invalid use of destructor %qD as a type", id);
  else if (TREE_CODE (decl) == TYPE_DECL)

    error ("invalid combination of multiple type-specifiers");
  else if (!parser->scope)
    {

      error ("%qE does not name a type", id);







      if (processing_template_decl && current_class_type
   && TYPE_BINFO (current_class_type))
 {
   tree b;

   for (b = TREE_CHAIN (TYPE_BINFO (current_class_type));
        b;
        b = TREE_CHAIN (b))
     {
       tree base_type = BINFO_TYPE (b);
       if (CLASS_TYPE_P (base_type)
    && dependent_type_p (base_type))
  {
    tree field;



    base_type = CLASSTYPE_PRIMARY_TEMPLATE_TYPE (base_type);
    for (field = TYPE_FIELDS (base_type);
         field;
         field = TREE_CHAIN (field))
      if (TREE_CODE (field) == TYPE_DECL
   && DECL_NAME (field) == id)
        {
   inform ("(perhaps %<typename %T::%E%> was intended)",
    BINFO_TYPE (b), id);
   break;
        }
    if (field)
      break;
  }
     }
 }
    }


  else if (parser->scope != error_mark_node)
    {
      if (TREE_CODE (parser->scope) == NAMESPACE_DECL)
 error ("%qE in namespace %qE does not name a type",
        id, parser->scope);
      else if (TYPE_P (parser->scope))
 error ("%qE in class %qT does not name a type", id, parser->scope);
      else
 gcc_unreachable ();
    }
  cp_parser_commit_to_tentative_parse (parser);
}
