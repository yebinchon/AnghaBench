
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; } ;


 int abs_output_section ;
 int lang_do_assignments_1 (int ,int ,int *,int ) ;
 int lang_statement_iteration ;
 TYPE_1__ statement_list ;

void
lang_do_assignments (void)
{
  lang_statement_iteration++;
  lang_do_assignments_1 (statement_list.head, abs_output_section, ((void*)0), 0);
}
