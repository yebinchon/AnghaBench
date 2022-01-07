
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int * tree ;
struct TYPE_6__ {int * enclosing_scope; } ;
typedef TYPE_1__ cxx_pretty_printer ;


 int * DECL_CONTEXT (int *) ;
 int * TYPE_CONTEXT (int *) ;
 scalar_t__ TYPE_P (int *) ;
 int pp_cxx_colon_colon (TYPE_1__*) ;
 int pp_cxx_template_keyword_if_needed (TYPE_1__*,int *,int *) ;
 int pp_cxx_unqualified_id (TYPE_1__*,int *) ;

__attribute__((used)) static void
pp_cxx_nested_name_specifier (cxx_pretty_printer *pp, tree t)
{
  if (t != ((void*)0) && t != pp->enclosing_scope)
    {
      tree scope = TYPE_P (t) ? TYPE_CONTEXT (t) : DECL_CONTEXT (t);
      pp_cxx_nested_name_specifier (pp, scope);
      pp_cxx_template_keyword_if_needed (pp, scope, t);
      pp_cxx_unqualified_id (pp, t);
      pp_cxx_colon_colon (pp);
    }
}
