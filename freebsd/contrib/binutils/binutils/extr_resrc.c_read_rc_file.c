
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rc_res_directory ;


 char* DEFAULT_PREPROCESSOR ;
 char const* EXECUTABLE_SUFFIX ;
 int ISTREAM_FILE ;
 int ISTREAM_PIPE ;
 int close_input_stream () ;
 scalar_t__ cpp_pipe ;
 int define_fontdirs () ;
 scalar_t__ filename_need_quotes (char const*) ;
 int * fontdirs ;
 int free (char*) ;
 int istream_type ;
 scalar_t__ look_for_default (char*,char*,int,char const*,char const*) ;
 scalar_t__ open_input_stream (char*) ;
 char* program_name ;
 char* rc_filename ;
 int rc_lineno ;
 int rcparse_discard_strings () ;
 int rcparse_set_language (int) ;
 int * resources ;
 int sprintf (char*,char*,char const*,char const*,char const*,char const*,char const*) ;
 int strlen (char const*) ;
 char* xmalloc (int) ;
 char* xstrdup (char const*) ;
 int yyparse () ;

rc_res_directory *
read_rc_file (const char *filename, const char *preprocessor,
       const char *preprocargs, int language, int use_temp_file)
{
  char *cmd;
  const char *fnquotes = (filename_need_quotes (filename) ? "\"" : "");

  istream_type = (use_temp_file) ? ISTREAM_FILE : ISTREAM_PIPE;

  if (preprocargs == ((void*)0))
    preprocargs = "";
  if (filename == ((void*)0))
    filename = "-";

  if (preprocessor)
    {
      cmd = xmalloc (strlen (preprocessor)
       + strlen (preprocargs)
       + strlen (filename)
       + strlen (fnquotes) * 2
       + 10);
      sprintf (cmd, "%s %s %s%s%s", preprocessor, preprocargs,
        fnquotes, filename, fnquotes);

      cpp_pipe = open_input_stream (cmd);
    }
  else
    {
      char *dash, *slash, *cp;

      preprocessor = DEFAULT_PREPROCESSOR;

      cmd = xmalloc (strlen (program_name)
       + strlen (preprocessor)
       + strlen (preprocargs)
       + strlen (filename)
       + strlen (fnquotes) * 2



       + 10);


      dash = slash = 0;
      for (cp = program_name; *cp; cp++)
 {
   if (*cp == '-')
     dash = cp;
   if (



       *cp == '/')
     {
       slash = cp;
       dash = 0;
     }
 }

      cpp_pipe = 0;

      if (dash)
 {



   cpp_pipe = look_for_default (cmd, program_name, dash - program_name + 1,
           preprocargs, filename);
 }

      if (slash && ! cpp_pipe)
 {



   cpp_pipe = look_for_default (cmd, program_name, slash - program_name + 1,
           preprocargs, filename);
 }

      if (! cpp_pipe)
 {


   cpp_pipe = look_for_default (cmd, "", 0, preprocargs, filename);
 }

    }

  free (cmd);

  rc_filename = xstrdup (filename);
  rc_lineno = 1;
  if (language != -1)
    rcparse_set_language (language);
  yyparse ();
  rcparse_discard_strings ();

  close_input_stream ();

  if (fontdirs != ((void*)0))
    define_fontdirs ();

  free (rc_filename);
  rc_filename = ((void*)0);

  return resources;
}
