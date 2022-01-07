
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* REPORT_BUGS_TO ;
 scalar_t__ TARGET_PREPENDS_UNDERSCORE ;
 char* _ (char*) ;
 int exit (int) ;
 int fprintf (int *,char*,...) ;
 int print_demangler_list (int *) ;
 char* program_name ;

__attribute__((used)) static void
usage (FILE *stream, int status)
{
  fprintf (stream, "Usage: %s [options] [mangled names]\n", program_name);

  fprintf (stream, "Options are:\n  [-_|--strip-underscore]     Ignore first leading underscore%s\n",


    TARGET_PREPENDS_UNDERSCORE ? " (default)" : "");
  fprintf (stream, "  [-n|--no-strip-underscore]  Do not ignore a leading underscore%s\n",

    TARGET_PREPENDS_UNDERSCORE ? "" : " (default)");
  fprintf (stream, "  [-p|--no-params]            Do not display function arguments\n  [-i|--no-verbose]           Do not show implementation details (if any)\n  [-t|--types]                Also attempt to demangle type encodings\n  [-s|--format ");




  print_demangler_list (stream);
  fprintf (stream, "]\n");

  fprintf (stream, "  [@<file>]                   Read extra options from <file>\n  [-h|--help]                 Display this information\n  [-v|--version]              Show the version information\nDemangled names are displayed to stdout.\nIf a name cannot be demangled it is just echoed to stdout.\nIf no names are provided on the command line, stdin is read.\n");






  if (REPORT_BUGS_TO[0] && status == 0)
    fprintf (stream, _("Report bugs to %s.\n"), REPORT_BUGS_TO);
  exit (status);
}
