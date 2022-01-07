
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TREE_CHAIN (int ) ;
 int current_template_parms ;
 int finish_scope () ;
 int processing_template_decl ;
 int reset_specialization () ;

void
end_template_decl (void)
{
  reset_specialization ();

  if (! processing_template_decl)
    return;


  finish_scope ();

  --processing_template_decl;
  current_template_parms = TREE_CHAIN (current_template_parms);
}
