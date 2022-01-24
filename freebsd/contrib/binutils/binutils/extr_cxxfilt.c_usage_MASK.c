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
 scalar_t__ TARGET_PREPENDS_UNDERSCORE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* program_name ; 

__attribute__((used)) static void
FUNC4 (FILE *stream, int status)
{
  FUNC2 (stream, "\
Usage: %s [options] [mangled names]\n", program_name);
  FUNC2 (stream, "\
Options are:\n\
  [-_|--strip-underscore]     Ignore first leading underscore%s\n",
	   TARGET_PREPENDS_UNDERSCORE ? " (default)" : "");
  FUNC2 (stream, "\
  [-n|--no-strip-underscore]  Do not ignore a leading underscore%s\n",
	   TARGET_PREPENDS_UNDERSCORE ? "" : " (default)");
  FUNC2 (stream, "\
  [-p|--no-params]            Do not display function arguments\n\
  [-i|--no-verbose]           Do not show implementation details (if any)\n\
  [-t|--types]                Also attempt to demangle type encodings\n\
  [-s|--format ");
  FUNC3 (stream);
  FUNC2 (stream, "]\n");

  FUNC2 (stream, "\
  [@<file>]                   Read extra options from <file>\n\
  [-h|--help]                 Display this information\n\
  [-v|--version]              Show the version information\n\
Demangled names are displayed to stdout.\n\
If a name cannot be demangled it is just echoed to stdout.\n\
If no names are provided on the command line, stdin is read.\n");
  if (REPORT_BUGS_TO[0] && status == 0)
    FUNC2 (stream, FUNC0("Report bugs to %s.\n"), REPORT_BUGS_TO);
  FUNC1 (status);
}