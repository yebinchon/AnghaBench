
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int FILE ;


 char* ctime (int *) ;
 int fprintf (int *,char*,char*,char*,char*,char*) ;
 char* hostname ;
 char* progname ;
 int time (int *) ;
 char* username ;

__attribute__((used)) static void
make_banner(FILE *fp)
{
  time_t t = time((time_t *) ((void*)0));
  char *cp = ctime(&t);

  fprintf(fp,
   "# *** This file was automatically generated -- DO NOT EDIT HERE ***\n# \"%s\" run by %s@%s on %s#\n",




   progname, username, hostname, cp);
}
