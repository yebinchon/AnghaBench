
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIDGET (int ) ;
 int SOLIB_CREATE_CATCH_LOAD_HOOK (int ,int,char*,char*) ;
 char* ep_parse_optional_filename (char**) ;
 char* ep_parse_optional_if_clause (char**) ;
 int ep_skip_leading_whitespace (char**) ;
 int error (char*) ;
 int inferior_ptid ;
 int isspace (char) ;

__attribute__((used)) static void
catch_load_command_1 (char *arg, int tempflag, int from_tty)
{
  char *dll_pathname = ((void*)0);
  char *cond_string = ((void*)0);

  ep_skip_leading_whitespace (&arg);
  cond_string = ep_parse_optional_if_clause (&arg);



  if (cond_string == ((void*)0))
    {
      dll_pathname = ep_parse_optional_filename (&arg);
      ep_skip_leading_whitespace (&arg);
      cond_string = ep_parse_optional_if_clause (&arg);
    }

  if ((*arg != '\0') && !isspace (*arg))
    error ("Junk at end of arguments.");




  SOLIB_CREATE_CATCH_LOAD_HOOK (PIDGET (inferior_ptid), tempflag,
    dll_pathname, cond_string);
}
