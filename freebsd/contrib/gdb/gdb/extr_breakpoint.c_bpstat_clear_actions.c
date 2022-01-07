
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* bpstat ;
struct TYPE_3__ {int * old_val; int commands; struct TYPE_3__* next; } ;


 int free_command_lines (int *) ;
 int value_free (int *) ;

void
bpstat_clear_actions (bpstat bs)
{
  for (; bs != ((void*)0); bs = bs->next)
    {
      free_command_lines (&bs->commands);
      if (bs->old_val != ((void*)0))
 {
   value_free (bs->old_val);
   bs->old_val = ((void*)0);
 }
    }
}
