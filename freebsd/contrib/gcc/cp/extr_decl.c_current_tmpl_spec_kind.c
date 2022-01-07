
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpl_spec_kind ;
struct cp_binding_level {scalar_t__ kind; scalar_t__ explicit_spec_p; struct cp_binding_level* level_chain; } ;


 struct cp_binding_level* current_binding_level ;
 scalar_t__ processing_explicit_instantiation ;
 scalar_t__ sk_template_parms ;
 int tsk_excessive_parms ;
 int tsk_expl_inst ;
 int tsk_expl_spec ;
 int tsk_insufficient_parms ;
 int tsk_invalid_expl_inst ;
 int tsk_invalid_member_spec ;
 int tsk_none ;
 int tsk_template ;

tmpl_spec_kind
current_tmpl_spec_kind (int n_class_scopes)
{
  int n_template_parm_scopes = 0;
  int seen_specialization_p = 0;
  int innermost_specialization_p = 0;
  struct cp_binding_level *b;


  for (b = current_binding_level;
       b->kind == sk_template_parms;
       b = b->level_chain)
    {
      if (b->explicit_spec_p)
 {
   if (n_template_parm_scopes == 0)
     innermost_specialization_p = 1;
   else
     seen_specialization_p = 1;
 }
      else if (seen_specialization_p == 1)
 return tsk_invalid_member_spec;

      ++n_template_parm_scopes;
    }


  if (processing_explicit_instantiation)
    {
      if (n_template_parm_scopes != 0)






 return tsk_invalid_expl_inst;
      else
 return tsk_expl_inst;
    }

  if (n_template_parm_scopes < n_class_scopes)







    return tsk_insufficient_parms;
  else if (n_template_parm_scopes == n_class_scopes)







    return tsk_none;
  else if (n_template_parm_scopes > n_class_scopes + 1)





    return tsk_excessive_parms;
  else







    return innermost_specialization_p ? tsk_expl_spec : tsk_template;
}
