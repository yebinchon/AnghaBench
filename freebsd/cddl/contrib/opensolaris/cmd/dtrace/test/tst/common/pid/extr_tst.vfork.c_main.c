
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _exit (int) ;
 int go () ;
 scalar_t__ vfork () ;
 scalar_t__ waiting (int volatile*) ;

int
main(int argc, char **argv)
{
 volatile int a = 0;

 while (waiting(&a) == 0)
  continue;

 if (vfork() == 0) {
  int ret = go();
  (void) _exit(ret);
 }

 return (0);
}
