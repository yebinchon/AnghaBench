
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int location_t ;


 int TV_VARCONST ;
 int at_eof ;
 scalar_t__ current_class_type ;
 scalar_t__ decl_namespace_list ;
 int emit_deferred (int *) ;
 int emit_instantiate_pending_templates (int *) ;
 int emit_support_tinfos () ;
 int global_bindings_p () ;
 int input_line ;
 int input_location ;
 int timevar_push (int ) ;

void
cp_finish_file (void)
{

  location_t locus;


  locus = input_location;
  at_eof = 1;


  if (! global_bindings_p () || current_class_type || decl_namespace_list)
    return;
  input_line -= 1;
  timevar_push (TV_VARCONST);

  emit_support_tinfos ();


  emit_instantiate_pending_templates (&locus);

  emit_deferred (&locus);
}
