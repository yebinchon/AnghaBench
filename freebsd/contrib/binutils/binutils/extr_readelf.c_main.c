
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_CTYPE ;
 int LC_MESSAGES ;
 int LOCALEDIR ;
 int PACKAGE ;
 int _ (char*) ;
 int bindtextdomain (int ,int ) ;
 int * cmdline_dump_sects ;
 int * dump_sects ;
 int error (int ) ;
 int expandargv (int*,char***) ;
 int free (int *) ;
 int * malloc (scalar_t__) ;
 int memcpy (int *,int *,scalar_t__) ;
 scalar_t__ num_cmdline_dump_sects ;
 scalar_t__ num_dump_sects ;
 int optind ;
 int parse_args (int,char**) ;
 int process_file (char*) ;
 int setlocale (int ,char*) ;
 int show_name ;
 int textdomain (int ) ;

int
main (int argc, char **argv)
{
  int err;







  bindtextdomain (PACKAGE, LOCALEDIR);
  textdomain (PACKAGE);

  expandargv (&argc, &argv);

  parse_args (argc, argv);

  if (num_dump_sects > 0)
    {

      cmdline_dump_sects = malloc (num_dump_sects);
      if (cmdline_dump_sects == ((void*)0))
 error (_("Out of memory allocating dump request table.\n"));
      else
 {
   memcpy (cmdline_dump_sects, dump_sects, num_dump_sects);
   num_cmdline_dump_sects = num_dump_sects;
 }
    }

  if (optind < (argc - 1))
    show_name = 1;

  err = 0;
  while (optind < argc)
    err |= process_file (argv[optind++]);

  if (dump_sects != ((void*)0))
    free (dump_sects);
  if (cmdline_dump_sects != ((void*)0))
    free (cmdline_dump_sects);

  return err;
}
