
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ lang_output_statement_type ;


 int lang_output_statement ;
 TYPE_1__* new_stat (int ,int ) ;
 int output_filename ;
 int stat_ptr ;

void
lang_final (void)
{
  lang_output_statement_type *new;

  new = new_stat (lang_output_statement, stat_ptr);
  new->name = output_filename;
}
