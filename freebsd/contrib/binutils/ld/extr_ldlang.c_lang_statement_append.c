
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lang_statement_union_type ;
struct TYPE_3__ {int ** tail; } ;
typedef TYPE_1__ lang_statement_list_type ;



void
lang_statement_append (lang_statement_list_type *list,
         lang_statement_union_type *element,
         lang_statement_union_type **field)
{
  *(list->tail) = element;
  list->tail = field;
}
