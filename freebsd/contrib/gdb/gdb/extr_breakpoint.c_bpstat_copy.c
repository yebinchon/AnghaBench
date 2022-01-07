
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* bpstat ;
struct TYPE_6__ {struct TYPE_6__* next; int * old_val; int * commands; } ;


 int * copy_command_lines (int *) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int * value_copy (int *) ;
 scalar_t__ xmalloc (int) ;

bpstat
bpstat_copy (bpstat bs)
{
  bpstat p = ((void*)0);
  bpstat tmp;
  bpstat retval = ((void*)0);

  if (bs == ((void*)0))
    return bs;

  for (; bs != ((void*)0); bs = bs->next)
    {
      tmp = (bpstat) xmalloc (sizeof (*tmp));
      memcpy (tmp, bs, sizeof (*tmp));
      if (bs->commands != ((void*)0))
 tmp->commands = copy_command_lines (bs->commands);
      if (bs->old_val != ((void*)0))
 tmp->old_val = value_copy (bs->old_val);

      if (p == ((void*)0))

 retval = tmp;
      else
 p->next = tmp;
      p = tmp;
    }
  p->next = ((void*)0);
  return retval;
}
