
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 char* g_pname ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void) fprintf(stderr, "Usage:\n"
     "\t%s [-vACHV] [-n count] [-s depth] [-e secs] [-x opt[=val]]\n"
     "\t    command [arg...]\n"
     "\t%s [-vACHV] [-n count] [-s depth] [-e secs] [-x opt[=val]]\n"
     "\t    -p pid\n", g_pname, g_pname);

 exit(E_USAGE);
}
