
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int child_channel; int parent_channel; } ;


 int pipe (int ) ;
 TYPE_1__ startup_semaphore ;
 int warning (char*) ;

void
pre_fork_inferior (void)
{
  int status;

  status = pipe (startup_semaphore.parent_channel);
  if (status < 0)
    {
      warning ("error getting parent pipe for startup semaphore");
      return;
    }

  status = pipe (startup_semaphore.child_channel);
  if (status < 0)
    {
      warning ("error getting child pipe for startup semaphore");
      return;
    }
}
