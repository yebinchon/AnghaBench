
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _exit (int) ;
 int summary () ;

void
terminate(int sig)
{

 summary();
 _exit(sig == 0 ? 0 : 1);
}
