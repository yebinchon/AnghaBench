
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
     "usage: rm [-f | -i] [-dIPRrvWx] file ...",
     "       unlink [--] file");
 exit(EX_USAGE);
}
