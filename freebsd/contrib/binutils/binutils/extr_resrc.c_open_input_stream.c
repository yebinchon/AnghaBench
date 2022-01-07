
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FOPEN_RT ;
 scalar_t__ ISTREAM_FILE ;
 char* _ (char*) ;
 char* choose_temp_base () ;
 int close_input_stream ;
 int * cpp_pipe ;
 char* cpp_temp_file ;
 int errno ;
 int fatal (char*,char*,int ) ;
 int * fopen (char*,int ) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 scalar_t__ istream_type ;
 int * popen (char*,int ) ;
 scalar_t__ run_cmd (char*,char*) ;
 int sprintf (char*,char*,char*) ;
 int stderr ;
 int strerror (int ) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ verbose ;
 int xatexit (int ) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static FILE *
open_input_stream (char *cmd)
{
  if (istream_type == ISTREAM_FILE)
    {
      char *fileprefix;

      fileprefix = choose_temp_base ();
      cpp_temp_file = (char *) xmalloc (strlen (fileprefix) + 5);
      sprintf (cpp_temp_file, "%s.irc", fileprefix);
      free (fileprefix);

      if (run_cmd (cmd, cpp_temp_file))
 fatal (_("can't execute `%s': %s"), cmd, strerror (errno));

      cpp_pipe = fopen (cpp_temp_file, FOPEN_RT);;
      if (cpp_pipe == ((void*)0))
 fatal (_("can't open temporary file `%s': %s"),
        cpp_temp_file, strerror (errno));

      if (verbose)
 fprintf (stderr,
          _("Using temporary file `%s' to read preprocessor output\n"),
   cpp_temp_file);
    }
  else
    {
      cpp_pipe = popen (cmd, FOPEN_RT);
      if (cpp_pipe == ((void*)0))
 fatal (_("can't popen `%s': %s"), cmd, strerror (errno));
      if (verbose)
 fprintf (stderr, _("Using popen to read preprocessor output\n"));
    }

  xatexit (close_input_stream);
  return cpp_pipe;
}
