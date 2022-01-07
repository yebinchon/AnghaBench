
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_TEMPLATE_INFO (int ) ;
 int DECL_TEMPLATE_PARMS (int ) ;
 scalar_t__ DECL_TEMPLATE_SPECIALIZATION (int ) ;
 scalar_t__ TMPL_PARMS_DEPTH (int ) ;
 int most_general_template (int ) ;
 scalar_t__ processing_template_decl ;

__attribute__((used)) static int
inline_needs_template_parms (tree decl)
{
  if (! DECL_TEMPLATE_INFO (decl))
    return 0;

  return (TMPL_PARMS_DEPTH (DECL_TEMPLATE_PARMS (most_general_template (decl)))
   > (processing_template_decl + DECL_TEMPLATE_SPECIALIZATION (decl)));
}
