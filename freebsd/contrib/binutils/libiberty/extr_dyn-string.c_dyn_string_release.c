
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* dyn_string_t ;
struct TYPE_4__ {char* s; } ;


 int free (TYPE_1__*) ;

char*
dyn_string_release (dyn_string_t ds)
{

  char* result = ds->s;

  ds->s = ((void*)0);

  free (ds);

  return result;
}
