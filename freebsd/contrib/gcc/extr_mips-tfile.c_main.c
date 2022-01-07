
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

int
main (void)
{
  fprintf (stderr, "Mips-tfile should only be run on a MIPS computer!\n");
  exit (1);
}
