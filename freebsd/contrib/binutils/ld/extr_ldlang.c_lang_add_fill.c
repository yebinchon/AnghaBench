
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * fill; } ;
typedef TYPE_1__ lang_fill_statement_type ;
typedef int fill_type ;


 int lang_fill_statement ;
 TYPE_1__* new_stat (int ,int ) ;
 int stat_ptr ;

void
lang_add_fill (fill_type *fill)
{
  lang_fill_statement_type *new;

  new = new_stat (lang_fill_statement, stat_ptr);
  new->fill = fill;
}
