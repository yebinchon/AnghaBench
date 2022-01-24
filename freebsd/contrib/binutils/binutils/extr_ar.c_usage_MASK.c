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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  is_ranlib ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 char* program_name ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5 (int help)
{
  FILE *s;

  s = help ? stdout : stderr;

  if (! is_ranlib)
    {
      /* xgettext:c-format */
      FUNC2 (s, FUNC0("Usage: %s [emulation options] [-]{dmpqrstx}[abcfilNoPsSuvV] [member-name] [count] archive-file file...\n"),
	       program_name);
      /* xgettext:c-format */
      FUNC2 (s, FUNC0("       %s -M [<mri-script]\n"), program_name);
      FUNC2 (s, FUNC0(" commands:\n"));
      FUNC2 (s, FUNC0("  d            - delete file(s) from the archive\n"));
      FUNC2 (s, FUNC0("  m[ab]        - move file(s) in the archive\n"));
      FUNC2 (s, FUNC0("  p            - print file(s) found in the archive\n"));
      FUNC2 (s, FUNC0("  q[f]         - quick append file(s) to the archive\n"));
      FUNC2 (s, FUNC0("  r[ab][f][u]  - replace existing or insert new file(s) into the archive\n"));
      FUNC2 (s, FUNC0("  t            - display contents of archive\n"));
      FUNC2 (s, FUNC0("  x[o]         - extract file(s) from the archive\n"));
      FUNC2 (s, FUNC0(" command specific modifiers:\n"));
      FUNC2 (s, FUNC0("  [a]          - put file(s) after [member-name]\n"));
      FUNC2 (s, FUNC0("  [b]          - put file(s) before [member-name] (same as [i])\n"));
      FUNC2 (s, FUNC0("  [N]          - use instance [count] of name\n"));
      FUNC2 (s, FUNC0("  [f]          - truncate inserted file names\n"));
      FUNC2 (s, FUNC0("  [P]          - use full path names when matching\n"));
      FUNC2 (s, FUNC0("  [o]          - preserve original dates\n"));
      FUNC2 (s, FUNC0("  [u]          - only replace files that are newer than current archive contents\n"));
      FUNC2 (s, FUNC0(" generic modifiers:\n"));
      FUNC2 (s, FUNC0("  [c]          - do not warn if the library had to be created\n"));
      FUNC2 (s, FUNC0("  [s]          - create an archive index (cf. ranlib)\n"));
      FUNC2 (s, FUNC0("  [S]          - do not build a symbol table\n"));
      FUNC2 (s, FUNC0("  [v]          - be verbose\n"));
      FUNC2 (s, FUNC0("  [V]          - display the version number\n"));
      FUNC2 (s, FUNC0("  @<file>      - read options from <file>\n"));
 
      FUNC1 (s);
    }
  else
    {
      /* xgettext:c-format */
      FUNC2 (s, FUNC0("Usage: %s [options] archive\n"), program_name);
      FUNC2 (s, FUNC0(" Generate an index to speed access to archives\n"));
      FUNC2 (s, FUNC0(" The options are:\n\
  @<file>                      Read options from <file>\n\
  -h --help                    Print this help message\n\
  -V --version                 Print version information\n"));
    }

  FUNC3 (program_name, s);

  if (REPORT_BUGS_TO[0] && help)
    FUNC2 (s, FUNC0("Report bugs to %s\n"), REPORT_BUGS_TO);

  FUNC4 (help ? 0 : 1);
}