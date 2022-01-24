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
 char* mname ; 
 char* program_name ; 

__attribute__((used)) static void
FUNC3 (FILE *file, int status)
{
  /* xgetext:c-format */
  FUNC2 (file, FUNC0("Usage %s <option(s)> <object-file(s)>\n"), program_name);
  /* xgetext:c-format */
  FUNC2 (file, FUNC0("   -m --machine <machine>    Create as DLL for <machine>.  [default: %s]\n"), mname);
  FUNC2 (file, FUNC0("        possible <machine>: arm[_interwork], i386, mcore[-elf]{-le|-be}, ppc, thumb\n"));
  FUNC2 (file, FUNC0("   -e --output-exp <outname> Generate an export file.\n"));
  FUNC2 (file, FUNC0("   -l --output-lib <outname> Generate an interface library.\n"));
  FUNC2 (file, FUNC0("   -a --add-indirect         Add dll indirects to export file.\n"));
  FUNC2 (file, FUNC0("   -D --dllname <name>       Name of input dll to put into interface lib.\n"));
  FUNC2 (file, FUNC0("   -d --input-def <deffile>  Name of .def file to be read in.\n"));
  FUNC2 (file, FUNC0("   -z --output-def <deffile> Name of .def file to be created.\n"));
  FUNC2 (file, FUNC0("      --export-all-symbols   Export all symbols to .def\n"));
  FUNC2 (file, FUNC0("      --no-export-all-symbols  Only export listed symbols\n"));
  FUNC2 (file, FUNC0("      --exclude-symbols <list> Don't export <list>\n"));
  FUNC2 (file, FUNC0("      --no-default-excludes  Clear default exclude symbols\n"));
  FUNC2 (file, FUNC0("   -b --base-file <basefile> Read linker generated base file.\n"));
  FUNC2 (file, FUNC0("   -x --no-idata4            Don't generate idata$4 section.\n"));
  FUNC2 (file, FUNC0("   -c --no-idata5            Don't generate idata$5 section.\n"));
  FUNC2 (file, FUNC0("   -U --add-underscore       Add underscores to all symbols in interface library.\n"));
  FUNC2 (file, FUNC0("      --add-stdcall-underscore Add underscores to stdcall symbols in interface library.\n"));
  FUNC2 (file, FUNC0("   -k --kill-at              Kill @<n> from exported names.\n"));
  FUNC2 (file, FUNC0("   -A --add-stdcall-alias    Add aliases without @<n>.\n"));
  FUNC2 (file, FUNC0("   -p --ext-prefix-alias <prefix> Add aliases with <prefix>.\n"));
  FUNC2 (file, FUNC0("   -S --as <name>            Use <name> for assembler.\n"));
  FUNC2 (file, FUNC0("   -f --as-flags <flags>     Pass <flags> to the assembler.\n"));
  FUNC2 (file, FUNC0("   -C --compat-implib        Create backward compatible import library.\n"));
  FUNC2 (file, FUNC0("   -n --no-delete            Keep temp files (repeat for extra preservation).\n"));
  FUNC2 (file, FUNC0("   -t --temp-prefix <prefix> Use <prefix> to construct temp file names.\n"));
  FUNC2 (file, FUNC0("   -v --verbose              Be verbose.\n"));
  FUNC2 (file, FUNC0("   -V --version              Display the program version.\n"));
  FUNC2 (file, FUNC0("   -h --help                 Display this information.\n"));
  FUNC2 (file, FUNC0("   @<file>                   Read options from <file>.\n"));
#ifdef DLLTOOL_MCORE_ELF
  fprintf (file, _("   -M --mcore-elf <outname>  Process mcore-elf object files into <outname>.\n"));
  fprintf (file, _("   -L --linker <name>        Use <name> as the linker.\n"));
  fprintf (file, _("   -F --linker-flags <flags> Pass <flags> to the linker.\n"));
#endif
  if (REPORT_BUGS_TO[0] && status == 0)
    FUNC2 (file, FUNC0("Report bugs to %s\n"), REPORT_BUGS_TO);
  FUNC1 (status);
}