
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_3__ {scalar_t__ scope; char const* object_scope; } ;
typedef TYPE_1__ cp_parser ;


 int CLASS_TYPE_P (char const*) ;
 int error (char*,scalar_t__,...) ;
 scalar_t__ error_mark_node ;
 scalar_t__ global_namespace ;

__attribute__((used)) static void
cp_parser_name_lookup_error (cp_parser* parser,
        tree name,
        tree decl,
        const char* desired)
{


  if (decl == error_mark_node)
    {
      if (parser->scope && parser->scope != global_namespace)
 error ("%<%D::%D%> has not been declared",
        parser->scope, name);
      else if (parser->scope == global_namespace)
 error ("%<::%D%> has not been declared", name);
      else if (parser->object_scope
        && !CLASS_TYPE_P (parser->object_scope))
 error ("request for member %qD in non-class type %qT",
        name, parser->object_scope);
      else if (parser->object_scope)
 error ("%<%T::%D%> has not been declared",
        parser->object_scope, name);
      else
 error ("%qD has not been declared", name);
    }
  else if (parser->scope && parser->scope != global_namespace)
    error ("%<%D::%D%> %s", parser->scope, name, desired);
  else if (parser->scope == global_namespace)
    error ("%<::%D%> %s", name, desired);
  else
    error ("%qD %s", name, desired);
}
