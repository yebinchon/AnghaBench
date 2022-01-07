
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; int * next; } ;
struct TYPE_7__ {TYPE_1__ header; } ;
typedef TYPE_2__ lang_statement_union_type ;
typedef int lang_statement_list_type ;
typedef enum statement_enum { ____Placeholder_statement_enum } statement_enum ;


 int lang_statement_append (int *,TYPE_2__*,int **) ;
 TYPE_2__* stat_alloc (size_t) ;

__attribute__((used)) static lang_statement_union_type *
new_statement (enum statement_enum type,
        size_t size,
        lang_statement_list_type *list)
{
  lang_statement_union_type *new;

  new = stat_alloc (size);
  new->header.type = type;
  new->header.next = ((void*)0);
  lang_statement_append (list, new, &new->header.next);
  return new;
}
