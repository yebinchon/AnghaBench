
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* dp_name; struct TYPE_4__* dp_next; } ;
typedef TYPE_1__ dt_provmod_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
dt_provmod_destroy(dt_provmod_t **provmod)
{
 dt_provmod_t *next, *current;

 for (current = *provmod; current != ((void*)0); current = next) {
  next = current->dp_next;
  free(current->dp_name);
  free(current);
 }

 *provmod = ((void*)0);
}
