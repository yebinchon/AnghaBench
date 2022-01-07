
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int as_bad (char*,char*) ;
 int as_warn (char*,char*) ;
 char* demand_copy_C_string (int*) ;
 int demand_empty_rest_of_line () ;
 int ignore_rest_of_line () ;
 char* input_line_pointer ;
 int is_it_end_of_statement () ;

void
s_errwarn (int err)
{
  int len;





  char *msg
    = (err ? _(".error directive invoked in source file")
       : _(".warning directive invoked in source file"));

  if (!is_it_end_of_statement ())
    {
      if (*input_line_pointer != '\"')
 {
   as_bad (_("%s argument must be a string"),
    err ? ".error" : ".warning");
   ignore_rest_of_line ();
   return;
 }

      msg = demand_copy_C_string (&len);
      if (msg == ((void*)0))
 return;
    }

  if (err)
    as_bad ("%s", msg);
  else
    as_warn ("%s", msg);
  demand_empty_rest_of_line ();
}
