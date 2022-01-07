
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE (char*) ;
 int exiting ;
 int exiting_exitstatus ;
 int exitshell_savedstatus () ;
 int getpid () ;

void
exitshell(int status)
{
 TRACE(("exitshell(%d) pid=%d\n", status, getpid()));
 exiting = 1;
 exiting_exitstatus = status;
 exitshell_savedstatus();
}
