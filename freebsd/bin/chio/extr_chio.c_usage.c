
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* getprogname () ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void)fprintf(stderr, "usage: %s [-f changer] command [-<flags>] "
  "arg1 arg2 [arg3 [...]]\n", getprogname());
 exit(1);
}
