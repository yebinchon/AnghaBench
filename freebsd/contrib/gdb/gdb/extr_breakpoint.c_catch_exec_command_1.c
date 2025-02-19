
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int create_exec_event_catchpoint (int,char*) ;
 char* ep_parse_optional_if_clause (char**) ;
 int ep_skip_leading_whitespace (char**) ;
 int error (char*) ;
 int isspace (char) ;

__attribute__((used)) static void
catch_exec_command_1 (char *arg, int tempflag, int from_tty)
{
  char *cond_string = ((void*)0);

  ep_skip_leading_whitespace (&arg);






  cond_string = ep_parse_optional_if_clause (&arg);

  if ((*arg != '\0') && !isspace (*arg))
    error ("Junk at end of arguments.");



  create_exec_event_catchpoint (tempflag, cond_string);
}
