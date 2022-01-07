
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 (void)fprintf(stderr, "%s\n%s\n",
        "usage: mv [-f | -i | -n] [-hv] source target",
        "       mv [-f | -i | -n] [-v] source ... directory");
 exit(EX_USAGE);
}
