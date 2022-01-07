
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 int allow_naked_reg ;
 int as_bad (int ) ;
 char bfd_get_symbol_leading_char (int ) ;
 int demand_empty_rest_of_line () ;
 int get_symbol_end () ;
 char* identifier_chars ;
 char* input_line_pointer ;
 int intel_syntax ;
 int * is_end_of_line ;
 char* register_prefix ;
 int stdoutput ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
set_intel_syntax (int syntax_flag)
{

  int ask_naked_reg = 0;

  SKIP_WHITESPACE ();
  if (!is_end_of_line[(unsigned char) *input_line_pointer])
    {
      char *string = input_line_pointer;
      int e = get_symbol_end ();

      if (strcmp (string, "prefix") == 0)
 ask_naked_reg = 1;
      else if (strcmp (string, "noprefix") == 0)
 ask_naked_reg = -1;
      else
 as_bad (_("bad argument to syntax directive."));
      *input_line_pointer = e;
    }
  demand_empty_rest_of_line ();

  intel_syntax = syntax_flag;

  if (ask_naked_reg == 0)
    allow_naked_reg = (intel_syntax
         && (bfd_get_symbol_leading_char (stdoutput) != '\0'));
  else
    allow_naked_reg = (ask_naked_reg < 0);

  identifier_chars['%'] = intel_syntax && allow_naked_reg ? '%' : 0;
  identifier_chars['$'] = intel_syntax ? '$' : 0;
  register_prefix = allow_naked_reg ? "" : "%";
}
