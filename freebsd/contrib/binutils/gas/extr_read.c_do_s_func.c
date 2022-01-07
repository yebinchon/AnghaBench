
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEBUG_STABS ;
 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 int as_bad (int ) ;
 int asprintf (char**,char*,...) ;
 char bfd_get_symbol_leading_char (int ) ;
 scalar_t__ debug_type ;
 int demand_empty_rest_of_line () ;
 char get_symbol_end () ;
 int ignore_rest_of_line () ;
 char* input_line_pointer ;
 int stabs_generate_asm_endfunc (char*,char*) ;
 int stabs_generate_asm_func (char*,char*) ;
 int stdoutput ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
do_s_func (int end_p, const char *default_prefix)
{



  static char *current_name;
  static char *current_label;

  if (end_p)
    {
      if (current_name == ((void*)0))
 {
   as_bad (_("missing .func"));
   ignore_rest_of_line ();
   return;
 }

      if (debug_type == DEBUG_STABS)
 stabs_generate_asm_endfunc (current_name, current_label);

      current_name = current_label = ((void*)0);
    }
  else
    {
      char *name, *label;
      char delim1, delim2;

      if (current_name != ((void*)0))
 {
   as_bad (_(".endfunc missing for previous .func"));
   ignore_rest_of_line ();
   return;
 }

      name = input_line_pointer;
      delim1 = get_symbol_end ();
      name = xstrdup (name);
      *input_line_pointer = delim1;
      SKIP_WHITESPACE ();
      if (*input_line_pointer != ',')
 {
   if (default_prefix)
     asprintf (&label, "%s%s", default_prefix, name);
   else
     {
       char leading_char = bfd_get_symbol_leading_char (stdoutput);


       if (leading_char)
  asprintf (&label, "%c%s", leading_char, name);
       else
  label = name;
     }
 }
      else
 {
   ++input_line_pointer;
   SKIP_WHITESPACE ();
   label = input_line_pointer;
   delim2 = get_symbol_end ();
   label = xstrdup (label);
   *input_line_pointer = delim2;
 }

      if (debug_type == DEBUG_STABS)
 stabs_generate_asm_func (name, label);

      current_name = name;
      current_label = label;
    }

  demand_empty_rest_of_line ();
}
