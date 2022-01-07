
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef union etree_union {int dummy; } etree_union ;
struct TYPE_3__ {int type; union etree_union* exp; } ;
typedef TYPE_1__ lang_data_statement_type ;


 int lang_data_statement ;
 TYPE_1__* new_stat (int ,int ) ;
 int stat_ptr ;

void
lang_add_data (int type, union etree_union *exp)
{
  lang_data_statement_type *new;

  new = new_stat (lang_data_statement, stat_ptr);
  new->exp = exp;
  new->type = type;
}
