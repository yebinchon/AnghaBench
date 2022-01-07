
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_CONF ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static void traps(void)
{
 static char test[] __attribute__((aligned(sizeof(int)))) = "CONF";
 int *p = (int *)test;

 if (*p != INT_CONF) {
  fprintf(stderr, "fixdep: sizeof(int) != 4 or wrong endianess? %#x\n",
   *p);
  exit(2);
 }
}
