
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int dummy; } ;


 int free (struct machine*) ;
 int machine__exit (struct machine*) ;

void machine__delete(struct machine *machine)
{
 machine__exit(machine);
 free(machine);
}
