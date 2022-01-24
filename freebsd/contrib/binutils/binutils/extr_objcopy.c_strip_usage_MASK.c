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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* REPORT_BUGS_TO ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 char* program_name ; 

__attribute__((used)) static void
FUNC4 (FILE *stream, int exit_status)
{
  FUNC2 (stream, FUNC0("Usage: %s <option(s)> in-file(s)\n"), program_name);
  FUNC2 (stream, FUNC0(" Removes symbols and sections from files\n"));
  FUNC2 (stream, FUNC0(" The options are:\n"));
  FUNC2 (stream, FUNC0("\
  -I --input-target=<bfdname>      Assume input file is in format <bfdname>\n\
  -O --output-target=<bfdname>     Create an output file in format <bfdname>\n\
  -F --target=<bfdname>            Set both input and output format to <bfdname>\n\
  -p --preserve-dates              Copy modified/access timestamps to the output\n\
  -R --remove-section=<name>       Remove section <name> from the output\n\
  -s --strip-all                   Remove all symbol and relocation information\n\
  -g -S -d --strip-debug           Remove all debugging symbols & sections\n\
     --strip-unneeded              Remove all symbols not needed by relocations\n\
     --only-keep-debug             Strip everything but the debug information\n\
  -N --strip-symbol=<name>         Do not copy symbol <name>\n\
  -K --keep-symbol=<name>          Do not strip symbol <name>\n\
     --keep-file-symbols           Do not strip file symbol(s)\n\
  -w --wildcard                    Permit wildcard in symbol comparison\n\
  -x --discard-all                 Remove all non-global symbols\n\
  -X --discard-locals              Remove any compiler-generated symbols\n\
  -v --verbose                     List all object files modified\n\
  -V --version                     Display this program's version number\n\
  -h --help                        Display this output\n\
     --info                        List object formats & architectures supported\n\
  -o <file>                        Place stripped output into <file>\n\
"));

  FUNC3 (program_name, stream);
  if (REPORT_BUGS_TO[0] && exit_status == 0)
    FUNC2 (stream, FUNC0("Report bugs to %s\n"), REPORT_BUGS_TO);
  FUNC1 (exit_status);
}