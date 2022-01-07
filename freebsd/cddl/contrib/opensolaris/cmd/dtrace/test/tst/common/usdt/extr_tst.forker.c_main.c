
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FORKER_FIRE () ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int wait (int *) ;

int
main(int argc, char **argv)
{
 int i;

 for (i = 0; i < 10000; i++) {
  FORKER_FIRE();
  if (fork() == 0)
   exit(0);

  (void) wait(((void*)0));
 }

 return (0);
}
