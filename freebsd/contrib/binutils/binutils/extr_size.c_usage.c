
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* REPORT_BUGS_TO ;
 char* _ (char*) ;
 int exit (int) ;
 int fprintf (int *,char*,...) ;
 int list_supported_targets (char*,int *) ;
 char* program_name ;

__attribute__((used)) static void
usage (FILE *stream, int status)
{
  fprintf (stream, _("Usage: %s [option(s)] [file(s)]\n"), program_name);
  fprintf (stream, _(" Displays the sizes of sections inside binary files\n"));
  fprintf (stream, _(" If no input file(s) are specified, a.out is assumed\n"));
  fprintf (stream, _(" The options are:\n  -A|-B     --format={sysv|berkeley}  Select output style (default is %s)\n  -o|-d|-x  --radix={8|10|16}         Display numbers in octal, decimal or hex\n  -t        --totals                  Display the total sizes (Berkeley only)\n            --target=<bfdname>        Set the binary file format\n            @<file>                   Read options from <file>\n  -h        --help                    Display this information\n  -v        --version                 Display the program's version\n\n"),
  "sysv"

);
  list_supported_targets (program_name, stream);
  if (REPORT_BUGS_TO[0] && status == 0)
    fprintf (stream, _("Report bugs to %s\n"), REPORT_BUGS_TO);
  exit (status);
}
