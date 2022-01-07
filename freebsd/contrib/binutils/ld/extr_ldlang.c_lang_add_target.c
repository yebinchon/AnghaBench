
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* target; } ;
typedef TYPE_1__ lang_target_statement_type ;


 int lang_target_statement ;
 TYPE_1__* new_stat (int ,int ) ;
 int stat_ptr ;

void
lang_add_target (const char *name)
{
  lang_target_statement_type *new;

  new = new_stat (lang_target_statement, stat_ptr);
  new->target = name;
}
