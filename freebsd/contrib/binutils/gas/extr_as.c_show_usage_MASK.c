#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* DEFAULT_EMULATION ; 
 int /*<<< orphan*/  EMULATION_ENVIRON ; 
 char* REPORT_BUGS_TO ; 
 char* FUNC0 (char*) ; 
 TYPE_1__** emulations ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* myname ; 
 int n_emulations ; 
 int /*<<< orphan*/ * stdout ; 

__attribute__((used)) static void
FUNC5 (FILE * stream)
{
  FUNC1 (stream, FUNC0("Usage: %s [option...] [asmfile...]\n"), myname);

  FUNC1 (stream, FUNC0("\
Options:\n\
  -a[sub-option...]	  turn on listings\n\
                      	  Sub-options [default hls]:\n\
                      	  c      omit false conditionals\n\
                      	  d      omit debugging directives\n\
                      	  h      include high-level source\n\
                      	  l      include assembly\n\
                      	  m      include macro expansions\n\
                      	  n      omit forms processing\n\
                      	  s      include symbols\n\
                      	  =FILE  list to FILE (must be last sub-option)\n"));

  FUNC1 (stream, FUNC0("\
  --alternate             initially turn on alternate macro syntax\n"));
  FUNC1 (stream, FUNC0("\
  -D                      produce assembler debugging messages\n"));
  FUNC1 (stream, FUNC0("\
  --defsym SYM=VAL        define symbol SYM to given value\n"));
#ifdef USE_EMULATIONS
  {
    int i;
    char *def_em;

    fprintf (stream, "\
  --em=[");
    for (i = 0; i < n_emulations - 1; i++)
      fprintf (stream, "%s | ", emulations[i]->name);
    fprintf (stream, "%s]\n", emulations[i]->name);

    def_em = getenv (EMULATION_ENVIRON);
    if (!def_em)
      def_em = DEFAULT_EMULATION;
    fprintf (stream, _("\
                          emulate output (default %s)\n"), def_em);
  }
#endif
#if defined OBJ_ELF || defined OBJ_MAYBE_ELF
  fprintf (stream, _("\
  --execstack             require executable stack for this object\n"));
  fprintf (stream, _("\
  --noexecstack           don't require executable stack for this object\n"));
#endif
  FUNC1 (stream, FUNC0("\
  -f                      skip whitespace and comment preprocessing\n"));
  FUNC1 (stream, FUNC0("\
  -g --gen-debug          generate debugging information\n"));
  FUNC1 (stream, FUNC0("\
  --gstabs                generate STABS debugging information\n"));
  FUNC1 (stream, FUNC0("\
  --gstabs+               generate STABS debug info with GNU extensions\n"));
  FUNC1 (stream, FUNC0("\
  --gdwarf-2              generate DWARF2 debugging information\n"));
  FUNC1 (stream, FUNC0("\
  --hash-size=<value>     set the hash table size close to <value>\n"));
  FUNC1 (stream, FUNC0("\
  --help                  show this message and exit\n"));
  FUNC1 (stream, FUNC0("\
  --target-help           show target specific options\n"));
  FUNC1 (stream, FUNC0("\
  -I DIR                  add DIR to search list for .include directives\n"));
  FUNC1 (stream, FUNC0("\
  -J                      don't warn about signed overflow\n"));
  FUNC1 (stream, FUNC0("\
  -K                      warn when differences altered for long displacements\n"));
  FUNC1 (stream, FUNC0("\
  -L,--keep-locals        keep local symbols (e.g. starting with `L')\n"));
  FUNC1 (stream, FUNC0("\
  -M,--mri                assemble in MRI compatibility mode\n"));
  FUNC1 (stream, FUNC0("\
  --MD FILE               write dependency information in FILE (default none)\n"));
  FUNC1 (stream, FUNC0("\
  -nocpp                  ignored\n"));
  FUNC1 (stream, FUNC0("\
  -o OBJFILE              name the object-file output OBJFILE (default a.out)\n"));
  FUNC1 (stream, FUNC0("\
  -R                      fold data section into text section\n"));
  FUNC1 (stream, FUNC0("\
  --reduce-memory-overheads \n\
                          prefer smaller memory use at the cost of longer\n\
                          assembly times\n"));
  FUNC1 (stream, FUNC0("\
  --statistics            print various measured statistics from execution\n"));
  FUNC1 (stream, FUNC0("\
  --strip-local-absolute  strip local absolute symbols\n"));
  FUNC1 (stream, FUNC0("\
  --traditional-format    Use same format as native assembler when possible\n"));
  FUNC1 (stream, FUNC0("\
  --version               print assembler version number and exit\n"));
  FUNC1 (stream, FUNC0("\
  -W  --no-warn           suppress warnings\n"));
  FUNC1 (stream, FUNC0("\
  --warn                  don't suppress warnings\n"));
  FUNC1 (stream, FUNC0("\
  --fatal-warnings        treat warnings as errors\n"));
  FUNC1 (stream, FUNC0("\
  --itbl INSTTBL          extend instruction set to include instructions\n\
                          matching the specifications defined in file INSTTBL\n"));
  FUNC1 (stream, FUNC0("\
  -w                      ignored\n"));
  FUNC1 (stream, FUNC0("\
  -X                      ignored\n"));
  FUNC1 (stream, FUNC0("\
  -Z                      generate object file even after errors\n"));
  FUNC1 (stream, FUNC0("\
  --listing-lhs-width     set the width in words of the output data column of\n\
                          the listing\n"));
  FUNC1 (stream, FUNC0("\
  --listing-lhs-width2    set the width in words of the continuation lines\n\
                          of the output data column; ignored if smaller than\n\
                          the width of the first line\n"));
  FUNC1 (stream, FUNC0("\
  --listing-rhs-width     set the max width in characters of the lines from\n\
                          the source file\n"));
  FUNC1 (stream, FUNC0("\
  --listing-cont-lines    set the maximum number of continuation lines used\n\
                          for the output data column of the listing\n"));
  FUNC1 (stream, FUNC0("\
  @FILE                   read options from FILE\n")); 

  FUNC4 (stream);

  FUNC2 ('\n', stream);

  if (REPORT_BUGS_TO[0] && stream == stdout)
    FUNC1 (stream, FUNC0("Report bugs to %s\n"), REPORT_BUGS_TO);
}