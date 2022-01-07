
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fork () ;
 int go () ;
 scalar_t__ waiting (int volatile*) ;

int
main(int argc, char **argv)
{
 volatile int a = 0;

 while (waiting(&a) == 0)
  continue;

 (void) fork();
 (void) go();

 return (0);
}
