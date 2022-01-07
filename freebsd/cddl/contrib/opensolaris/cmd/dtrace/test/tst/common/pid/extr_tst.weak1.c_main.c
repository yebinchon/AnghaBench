
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGUSR1 ;
 int getpid () ;
 int handle ;
 int signal (int ,int ) ;

int
main(int argc, char **argv)
{
 (void) signal(SIGUSR1, handle);
 for (;;)
  getpid();
}
