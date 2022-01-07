
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {int dummy; } ;
typedef enum exception_event_kind { ____Placeholder_exception_event_kind } exception_event_kind ;


 int EX_EVENT_CATCH ;
 int EX_EVENT_THROW ;
 int create_exception_catchpoint (int,char*,int,struct symtab_and_line*) ;
 char* ep_parse_optional_if_clause (char**) ;
 int ep_skip_leading_whitespace (char**) ;
 int error (char*) ;
 scalar_t__ handle_gnu_v3_exceptions (int,char*,int,int) ;
 int isspace (char) ;
 struct symtab_and_line* target_enable_exception_callback (int,int) ;
 int warning (char*) ;

__attribute__((used)) static void
catch_exception_command_1 (enum exception_event_kind ex_event, char *arg,
      int tempflag, int from_tty)
{
  char *cond_string = ((void*)0);
  struct symtab_and_line *sal = ((void*)0);

  ep_skip_leading_whitespace (&arg);

  cond_string = ep_parse_optional_if_clause (&arg);

  if ((*arg != '\0') && !isspace (*arg))
    error ("Junk at end of arguments.");

  if ((ex_event != EX_EVENT_THROW) &&
      (ex_event != EX_EVENT_CATCH))
    error ("Unsupported or unknown exception event; cannot catch it");

  if (handle_gnu_v3_exceptions (tempflag, cond_string, ex_event, from_tty))
    return;


  sal = target_enable_exception_callback (ex_event, 1);

  if (sal)
    {


      if (sal != (struct symtab_and_line *) -1)
 create_exception_catchpoint (tempflag, cond_string, ex_event, sal);
      else
 return;
    }

  warning ("Unsupported with this platform/compiler combination.");
}
