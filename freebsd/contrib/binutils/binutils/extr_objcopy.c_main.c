
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int END_PROGRESS (char*) ;
 scalar_t__ FILENAME_CMP (char*,char*) ;
 int LC_CTYPE ;
 int LC_MESSAGES ;
 int LOCALEDIR ;
 int LOCALS_UNDEF ;
 int PACKAGE ;
 int START_PROGRESS (char*,int ) ;
 int STRIP_UNDEF ;
 int bfd_init () ;
 int bindtextdomain (int ,int ) ;
 int copy_main (int,char**) ;
 int discard_locals ;
 int expandargv (int*,char***) ;
 int is_strip ;
 char* program_name ;
 int set_default_bfd_target () ;
 int setlocale (int ,char*) ;
 int status ;
 int strip_main (int,char**) ;
 int strip_symbols ;
 int strlen (char*) ;
 int textdomain (int ) ;
 int xmalloc_set_program_name (char*) ;

int
main (int argc, char *argv[])
{






  bindtextdomain (PACKAGE, LOCALEDIR);
  textdomain (PACKAGE);

  program_name = argv[0];
  xmalloc_set_program_name (program_name);

  START_PROGRESS (program_name, 0);

  expandargv (&argc, &argv);

  strip_symbols = STRIP_UNDEF;
  discard_locals = LOCALS_UNDEF;

  bfd_init ();
  set_default_bfd_target ();

  if (is_strip < 0)
    {
      int i = strlen (program_name);
      is_strip = (i >= 5 && FILENAME_CMP (program_name + i - 5, "strip") == 0);
    }

  if (is_strip)
    strip_main (argc, argv);
  else
    copy_main (argc, argv);

  END_PROGRESS (program_name);

  return status;
}
