
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* coalesce_list_p ;
struct TYPE_4__ {struct TYPE_4__* list; } ;


 int free (TYPE_1__*) ;

void
delete_coalesce_list (coalesce_list_p cl)
{
  free (cl->list);
  free (cl);
}
