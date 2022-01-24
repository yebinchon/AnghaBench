#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* programname ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  verbose_flag ; 

__attribute__((used)) static void
FUNC3 (void)
{
  FUNC2 (FUNC0("Usage: %s [options] file...\n"), programname);
  FUNC1 (FUNC0("Options:\n"), stdout);

  FUNC1 (FUNC0("  -pass-exit-codes         Exit with highest error code from a phase\n"), stdout);
  FUNC1 (FUNC0("  --help                   Display this information\n"), stdout);
  FUNC1 (FUNC0("  --target-help            Display target specific command line options\n"), stdout);
  if (! verbose_flag)
    FUNC1 (FUNC0("  (Use '-v --help' to display command line options of sub-processes)\n"), stdout);
  FUNC1 (FUNC0("  -dumpspecs               Display all of the built in spec strings\n"), stdout);
  FUNC1 (FUNC0("  -dumpversion             Display the version of the compiler\n"), stdout);
  FUNC1 (FUNC0("  -dumpmachine             Display the compiler's target processor\n"), stdout);
  FUNC1 (FUNC0("  -print-search-dirs       Display the directories in the compiler's search path\n"), stdout);
  FUNC1 (FUNC0("  -print-libgcc-file-name  Display the name of the compiler's companion library\n"), stdout);
  FUNC1 (FUNC0("  -print-file-name=<lib>   Display the full path to library <lib>\n"), stdout);
  FUNC1 (FUNC0("  -print-prog-name=<prog>  Display the full path to compiler component <prog>\n"), stdout);
  FUNC1 (FUNC0("  -print-multi-directory   Display the root directory for versions of libgcc\n"), stdout);
  FUNC1 (FUNC0("\
  -print-multi-lib         Display the mapping between command line options and\n\
                           multiple library search directories\n"), stdout);
  FUNC1 (FUNC0("  -print-multi-os-directory Display the relative path to OS libraries\n"), stdout);
  FUNC1 (FUNC0("  -Wa,<options>            Pass comma-separated <options> on to the assembler\n"), stdout);
  FUNC1 (FUNC0("  -Wp,<options>            Pass comma-separated <options> on to the preprocessor\n"), stdout);
  FUNC1 (FUNC0("  -Wl,<options>            Pass comma-separated <options> on to the linker\n"), stdout);
  FUNC1 (FUNC0("  -Xassembler <arg>        Pass <arg> on to the assembler\n"), stdout);
  FUNC1 (FUNC0("  -Xpreprocessor <arg>     Pass <arg> on to the preprocessor\n"), stdout);
  FUNC1 (FUNC0("  -Xlinker <arg>           Pass <arg> on to the linker\n"), stdout);
  FUNC1 (FUNC0("  -combine                 Pass multiple source files to compiler at once\n"), stdout);
  FUNC1 (FUNC0("  -save-temps              Do not delete intermediate files\n"), stdout);
  FUNC1 (FUNC0("  -pipe                    Use pipes rather than intermediate files\n"), stdout);
  FUNC1 (FUNC0("  -time                    Time the execution of each subprocess\n"), stdout);
  FUNC1 (FUNC0("  -specs=<file>            Override built-in specs with the contents of <file>\n"), stdout);
  FUNC1 (FUNC0("  -std=<standard>          Assume that the input sources are for <standard>\n"), stdout);
  FUNC1 (FUNC0("\
  --sysroot=<directory>    Use <directory> as the root directory for headers\n\
                           and libraries\n"), stdout);
  FUNC1 (FUNC0("  -B <directory>           Add <directory> to the compiler's search paths\n"), stdout);
  FUNC1 (FUNC0("  -b <machine>             Run gcc for target <machine>, if installed\n"), stdout);
  FUNC1 (FUNC0("  -V <version>             Run gcc version number <version>, if installed\n"), stdout);
  FUNC1 (FUNC0("  -v                       Display the programs invoked by the compiler\n"), stdout);
  FUNC1 (FUNC0("  -###                     Like -v but options quoted and commands not executed\n"), stdout);
  FUNC1 (FUNC0("  -E                       Preprocess only; do not compile, assemble or link\n"), stdout);
  FUNC1 (FUNC0("  -S                       Compile only; do not assemble or link\n"), stdout);
  FUNC1 (FUNC0("  -c                       Compile and assemble, but do not link\n"), stdout);
  FUNC1 (FUNC0("  -o <file>                Place the output into <file>\n"), stdout);
  FUNC1 (FUNC0("\
  -x <language>            Specify the language of the following input files\n\
                           Permissible languages include: c c++ assembler none\n\
                           'none' means revert to the default behavior of\n\
                           guessing the language based on the file's extension\n\
"), stdout);

  FUNC2 (FUNC0("\
\nOptions starting with -g, -f, -m, -O, -W, or --param are automatically\n\
 passed on to the various sub-processes invoked by %s.  In order to pass\n\
 other options on to these processes the -W<letter> options must be used.\n\
"), programname);

  /* The rest of the options are displayed by invocations of the various
     sub-processes.  */
}