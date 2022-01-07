
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int begin_scope (int ,int *) ;
 int check_specialization_scope () ;
 int note_template_header (int) ;
 int sk_template_spec ;

bool
begin_specialization (void)
{
  begin_scope (sk_template_spec, ((void*)0));
  note_template_header (1);
  return check_specialization_scope ();
}
