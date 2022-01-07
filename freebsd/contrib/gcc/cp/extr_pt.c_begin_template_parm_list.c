
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int begin_scope (int ,int *) ;
 int note_template_header (int ) ;
 int processing_template_decl ;
 int processing_template_parmlist ;
 int sk_template_parms ;

void
begin_template_parm_list (void)
{
  begin_scope (sk_template_parms, ((void*)0));
  ++processing_template_decl;
  ++processing_template_parmlist;
  note_template_header (0);
}
