
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int fflush (int ) ;
 int finish_command (int *) ;
 int pager_process ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void wait_for_pager(void)
{
 fflush(stdout);
 fflush(stderr);

 close(1);
 close(2);
 finish_command(&pager_process);
}
