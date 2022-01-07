
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* progname ;
 int stderr ;
 char* strchr (char*,char) ;

__attribute__((used)) static void
usage(void)
{
 char *p;
 if ((p = strchr(progname, '[')) != ((void*)0))
     *p = '\0';

 (void)fprintf(stderr,
"usage: %s [-BeikNnqrstWwX] \n            [-C directory] [-D variable] [-d flags] [-f makefile]\n            [-I directory] [-J private] [-j max_jobs] [-m directory] [-T file]\n            [-V variable] [-v variable] [variable=value] [target ...]\n",



     progname);
 exit(2);
}
