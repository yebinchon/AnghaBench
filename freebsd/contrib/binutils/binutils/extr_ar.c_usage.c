
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* REPORT_BUGS_TO ;
 char* _ (char*) ;
 int ar_emul_usage (int *) ;
 int fprintf (int *,char*,...) ;
 int is_ranlib ;
 int list_supported_targets (char*,int *) ;
 char* program_name ;
 int * stderr ;
 int * stdout ;
 int xexit (int) ;

__attribute__((used)) static void
usage (int help)
{
  FILE *s;

  s = help ? stdout : stderr;

  if (! is_ranlib)
    {

      fprintf (s, _("Usage: %s [emulation options] [-]{dmpqrstx}[abcfilNoPsSuvV] [member-name] [count] archive-file file...\n"),
        program_name);

      fprintf (s, _("       %s -M [<mri-script]\n"), program_name);
      fprintf (s, _(" commands:\n"));
      fprintf (s, _("  d            - delete file(s) from the archive\n"));
      fprintf (s, _("  m[ab]        - move file(s) in the archive\n"));
      fprintf (s, _("  p            - print file(s) found in the archive\n"));
      fprintf (s, _("  q[f]         - quick append file(s) to the archive\n"));
      fprintf (s, _("  r[ab][f][u]  - replace existing or insert new file(s) into the archive\n"));
      fprintf (s, _("  t            - display contents of archive\n"));
      fprintf (s, _("  x[o]         - extract file(s) from the archive\n"));
      fprintf (s, _(" command specific modifiers:\n"));
      fprintf (s, _("  [a]          - put file(s) after [member-name]\n"));
      fprintf (s, _("  [b]          - put file(s) before [member-name] (same as [i])\n"));
      fprintf (s, _("  [N]          - use instance [count] of name\n"));
      fprintf (s, _("  [f]          - truncate inserted file names\n"));
      fprintf (s, _("  [P]          - use full path names when matching\n"));
      fprintf (s, _("  [o]          - preserve original dates\n"));
      fprintf (s, _("  [u]          - only replace files that are newer than current archive contents\n"));
      fprintf (s, _(" generic modifiers:\n"));
      fprintf (s, _("  [c]          - do not warn if the library had to be created\n"));
      fprintf (s, _("  [s]          - create an archive index (cf. ranlib)\n"));
      fprintf (s, _("  [S]          - do not build a symbol table\n"));
      fprintf (s, _("  [v]          - be verbose\n"));
      fprintf (s, _("  [V]          - display the version number\n"));
      fprintf (s, _("  @<file>      - read options from <file>\n"));

      ar_emul_usage (s);
    }
  else
    {

      fprintf (s, _("Usage: %s [options] archive\n"), program_name);
      fprintf (s, _(" Generate an index to speed access to archives\n"));
      fprintf (s, _(" The options are:\n  @<file>                      Read options from <file>\n  -h --help                    Print this help message\n  -V --version                 Print version information\n"));



    }

  list_supported_targets (program_name, s);

  if (REPORT_BUGS_TO[0] && help)
    fprintf (s, _("Report bugs to %s\n"), REPORT_BUGS_TO);

  xexit (help ? 0 : 1);
}
