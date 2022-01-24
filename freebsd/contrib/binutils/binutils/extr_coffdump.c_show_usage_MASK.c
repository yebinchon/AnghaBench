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
 char* program_name ; 

__attribute__((used)) static void
FUNC3 (FILE *file, int status)
{
  FUNC2 (file, FUNC0("Usage: %s [option(s)] in-file\n"), program_name);
  FUNC2 (file, FUNC0(" Print a human readable interpretation of a SYSROFF object file\n"));
  FUNC2 (file, FUNC0(" The options are:\n\
  @<file>                Read options from <file>\n\
  -h --help              Display this information\n\
  -v --version           Display the program's version\n\
\n"));

  if (REPORT_BUGS_TO[0] && status == 0)
    FUNC2 (file, FUNC0("Report bugs to %s\n"), REPORT_BUGS_TO);

  FUNC1 (status);
}