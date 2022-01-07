
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
sun2amd_usage(void)
{
  fprintf(stderr,
   "usage : sun2amd [-hH] [-i infile] [-o outfile]\n"
   "-h\thelp\n"
   "-i\tspecify an infile (defaults to stdin)\n"
   "-o\tspecify an outfile (defaults to stdout)\n");
}
