
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int * root_dir; int kernel_dsos; int user_dsos; int kmaps; } ;


 int dsos__delete (int *) ;
 int free (int *) ;
 int map_groups__exit (int *) ;

void machine__exit(struct machine *machine)
{
 map_groups__exit(&machine->kmaps);
 dsos__delete(&machine->user_dsos);
 dsos__delete(&machine->kernel_dsos);
 free(machine->root_dir);
 machine->root_dir = ((void*)0);
}
