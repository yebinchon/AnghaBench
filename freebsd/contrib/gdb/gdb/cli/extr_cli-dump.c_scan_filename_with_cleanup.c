
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int gdb_assert (int ) ;
 int make_cleanup (int ,char*) ;
 char* savestring (char*,int) ;
 char* skip_spaces (char*) ;
 int strcspn (char*,char*) ;
 char* tilde_expand (char*) ;
 int xfree ;
 char* xstrdup (char const*) ;

char *
scan_filename_with_cleanup (char **cmd, const char *defname)
{
  char *filename;
  char *fullname;




  if ((*cmd) == ((void*)0))
    {
      if (defname == ((void*)0))
 error ("Missing filename.");
      filename = xstrdup (defname);
      make_cleanup (xfree, filename);
    }
  else
    {

      char *end;

      (*cmd) = skip_spaces (*cmd);
      end = *cmd + strcspn (*cmd, " \t");
      filename = savestring ((*cmd), end - (*cmd));
      make_cleanup (xfree, filename);
      (*cmd) = skip_spaces (end);
    }
  gdb_assert (filename != ((void*)0));

  fullname = tilde_expand (filename);
  make_cleanup (xfree, fullname);

  return fullname;
}
