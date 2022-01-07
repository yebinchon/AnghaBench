
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child_pid ;
 int done ;
 int signr ;

__attribute__((used)) static void skip_signal(int signo)
{
 if(child_pid == -1)
  done = 1;

 signr = signo;
}
