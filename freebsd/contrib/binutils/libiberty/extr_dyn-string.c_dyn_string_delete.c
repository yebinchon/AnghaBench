
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* dyn_string_t ;
struct TYPE_4__ {struct TYPE_4__* s; } ;


 int free (TYPE_1__*) ;

void
dyn_string_delete (dyn_string_t ds)
{
  free (ds->s);
  free (ds);
}
