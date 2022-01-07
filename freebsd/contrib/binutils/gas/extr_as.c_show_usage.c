
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;
typedef int FILE ;


 char* DEFAULT_EMULATION ;
 int EMULATION_ENVIRON ;
 char* REPORT_BUGS_TO ;
 char* _ (char*) ;
 TYPE_1__** emulations ;
 int fprintf (int *,char*,...) ;
 int fputc (char,int *) ;
 char* getenv (int ) ;
 int md_show_usage (int *) ;
 char* myname ;
 int n_emulations ;
 int * stdout ;

__attribute__((used)) static void
show_usage (FILE * stream)
{
  fprintf (stream, _("Usage: %s [option...] [asmfile...]\n"), myname);

  fprintf (stream, _("Options:\n  -a[sub-option...]	  turn on listings\n                      	  Sub-options [default hls]:\n                      	  c      omit false conditionals\n                      	  d      omit debugging directives\n                      	  h      include high-level source\n                      	  l      include assembly\n                      	  m      include macro expansions\n                      	  n      omit forms processing\n                      	  s      include symbols\n                      	  =FILE  list to FILE (must be last sub-option)\n"));
  fprintf (stream, _("  --alternate             initially turn on alternate macro syntax\n"));

  fprintf (stream, _("  -D                      produce assembler debugging messages\n"));

  fprintf (stream, _("  --defsym SYM=VAL        define symbol SYM to given value\n"));
  fprintf (stream, _("  -f                      skip whitespace and comment preprocessing\n"));

  fprintf (stream, _("  -g --gen-debug          generate debugging information\n"));

  fprintf (stream, _("  --gstabs                generate STABS debugging information\n"));

  fprintf (stream, _("  --gstabs+               generate STABS debug info with GNU extensions\n"));

  fprintf (stream, _("  --gdwarf-2              generate DWARF2 debugging information\n"));

  fprintf (stream, _("  --hash-size=<value>     set the hash table size close to <value>\n"));

  fprintf (stream, _("  --help                  show this message and exit\n"));

  fprintf (stream, _("  --target-help           show target specific options\n"));

  fprintf (stream, _("  -I DIR                  add DIR to search list for .include directives\n"));

  fprintf (stream, _("  -J                      don't warn about signed overflow\n"));

  fprintf (stream, _("  -K                      warn when differences altered for long displacements\n"));

  fprintf (stream, _("  -L,--keep-locals        keep local symbols (e.g. starting with `L')\n"));

  fprintf (stream, _("  -M,--mri                assemble in MRI compatibility mode\n"));

  fprintf (stream, _("  --MD FILE               write dependency information in FILE (default none)\n"));

  fprintf (stream, _("  -nocpp                  ignored\n"));

  fprintf (stream, _("  -o OBJFILE              name the object-file output OBJFILE (default a.out)\n"));

  fprintf (stream, _("  -R                      fold data section into text section\n"));

  fprintf (stream, _("  --reduce-memory-overheads \n                          prefer smaller memory use at the cost of longer\n                          assembly times\n"));



  fprintf (stream, _("  --statistics            print various measured statistics from execution\n"));

  fprintf (stream, _("  --strip-local-absolute  strip local absolute symbols\n"));

  fprintf (stream, _("  --traditional-format    Use same format as native assembler when possible\n"));

  fprintf (stream, _("  --version               print assembler version number and exit\n"));

  fprintf (stream, _("  -W  --no-warn           suppress warnings\n"));

  fprintf (stream, _("  --warn                  don't suppress warnings\n"));

  fprintf (stream, _("  --fatal-warnings        treat warnings as errors\n"));

  fprintf (stream, _("  --itbl INSTTBL          extend instruction set to include instructions\n                          matching the specifications defined in file INSTTBL\n"));


  fprintf (stream, _("  -w                      ignored\n"));

  fprintf (stream, _("  -X                      ignored\n"));

  fprintf (stream, _("  -Z                      generate object file even after errors\n"));

  fprintf (stream, _("  --listing-lhs-width     set the width in words of the output data column of\n                          the listing\n"));


  fprintf (stream, _("  --listing-lhs-width2    set the width in words of the continuation lines\n                          of the output data column; ignored if smaller than\n                          the width of the first line\n"));



  fprintf (stream, _("  --listing-rhs-width     set the max width in characters of the lines from\n                          the source file\n"));


  fprintf (stream, _("  --listing-cont-lines    set the maximum number of continuation lines used\n                          for the output data column of the listing\n"));


  fprintf (stream, _("  @FILE                   read options from FILE\n"));


  md_show_usage (stream);

  fputc ('\n', stream);

  if (REPORT_BUGS_TO[0] && stream == stdout)
    fprintf (stream, _("Report bugs to %s\n"), REPORT_BUGS_TO);
}
