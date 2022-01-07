
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
typedef int PVOID ;
typedef int PUCHAR ;


 int PF_NOFREEZE ;
 int SIGKILL ;
 int SIGTERM ;
 int allow_signal (int ) ;
 int complete (int ) ;
 TYPE_1__* current ;
 int daemonize (int ) ;

void rtmp_os_thread_init(PUCHAR pThreadName, PVOID pNotify)
{
 daemonize(pThreadName );

 allow_signal(SIGTERM);
 allow_signal(SIGKILL);
 current->flags |= PF_NOFREEZE;


 complete(pNotify);
}
