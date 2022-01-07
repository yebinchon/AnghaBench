
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * head; int ** tail; } ;
typedef TYPE_1__ lang_statement_list_type ;



void
lang_list_init (lang_statement_list_type *list)
{
  list->head = ((void*)0);
  list->tail = &list->head;
}
