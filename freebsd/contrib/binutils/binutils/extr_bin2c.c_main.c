
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int LC_CTYPE ;
 int LC_MESSAGES ;
 int LOCALEDIR ;
 int PACKAGE ;
 int SET_BINARY (int ) ;
 char* _ (char*) ;
 int bindtextdomain (int ,int ) ;
 int exit (int) ;
 int fileno (int ) ;
 int fprintf (int *,char*,...) ;
 int getc (int ) ;
 int print_version (char*) ;
 int printf (char*,...) ;
 int setlocale (int ,char*) ;
 int * stderr ;
 int stdin ;
 int * stdout ;
 int textdomain (int ) ;

int
main (int argc, char *argv[])
{
  int c;
  int i;







  bindtextdomain (PACKAGE, LOCALEDIR);
  textdomain (PACKAGE);

  if (argc != 1)
    {
      int ishelp = 0;
      int isvers = 0;
      FILE *stream;

      if (argc == 2 && argv[1][0] == '-')
 {
   const char *opt = &argv[1][1];
   if (*opt == '-')
     ++opt;
   ishelp = *opt == 'h' || *opt == 'H';
   isvers = *opt == 'v' || *opt == 'V';
 }

      if (isvers)
 print_version ("bin2c");

      stream = ishelp ? stdout : stderr;
      fprintf (stream, _("Usage: %s < input_file > output_file\n"), argv[0]);
      fprintf (stream, _("Prints bytes from stdin in hex format.\n"));
      exit (!ishelp);
    }

  SET_BINARY (fileno (stdin));

  i = 0;
  while ((c = getc (stdin)) != EOF)
    {
      printf ("0x%02x,", c);
      if (++i == 16)
 {
   printf ("\n");
   i = 0;
 }
    }
  if (i != 0)
    printf ("\n");

  exit (0);
}
