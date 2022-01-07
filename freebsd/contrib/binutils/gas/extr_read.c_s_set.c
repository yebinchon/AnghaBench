
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 int as_bad (int ,...) ;
 int assign_symbol (char*,int) ;
 int demand_empty_rest_of_line () ;
 char get_symbol_end () ;
 int ignore_rest_of_line () ;
 char* input_line_pointer ;

void
s_set (int equiv)
{
  char *name;
  char delim;
  char *end_name;




  name = input_line_pointer;
  delim = get_symbol_end ();
  end_name = input_line_pointer;
  *end_name = delim;

  if (name == end_name)
    {
      as_bad (_("expected symbol name"));
      ignore_rest_of_line ();
      return;
    }

  SKIP_WHITESPACE ();

  if (*input_line_pointer != ',')
    {
      *end_name = 0;
      as_bad (_("expected comma after \"%s\""), name);
      *end_name = delim;
      ignore_rest_of_line ();
      return;
    }

  input_line_pointer++;
  *end_name = 0;

  assign_symbol (name, equiv);
  *end_name = delim;

  demand_empty_rest_of_line ();
}
