
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int children; } ;
typedef TYPE_1__ lang_group_statement_type ;


 int lang_group_statement ;
 int lang_list_init (int *) ;
 TYPE_1__* new_stat (int ,int *) ;
 int * stat_ptr ;

void
lang_enter_group (void)
{
  lang_group_statement_type *g;

  g = new_stat (lang_group_statement, stat_ptr);
  lang_list_init (&g->children);
  stat_ptr = &g->children;
}
