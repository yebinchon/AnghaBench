
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 char* progname ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void) fprintf(stderr,
     "Usage: %s [-gis] -l label | -L labelenv [-o outfile] object_file\n"
     "\n"
     "  Note: if -L labelenv is specified and labelenv is not set in\n"
     "  the environment, a default value is used.\n",
     progname);
}
