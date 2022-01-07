
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FRAG_APPEND_1_CHAR (unsigned int) ;
 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 scalar_t__ absolute_section ;
 int as_bad (int ) ;
 int demand_empty_rest_of_line () ;
 int dwarf_file_string ;
 unsigned int get_single_number () ;
 int ignore_rest_of_line () ;
 int* input_line_pointer ;
 int is_a_char (unsigned int) ;
 scalar_t__ is_it_end_of_statement () ;
 int know (int) ;
 int listing_source_file (char*) ;
 int md_flush_pending_output () ;
 unsigned int next_char_of_string () ;
 scalar_t__ now_seg ;
 int segment_name (scalar_t__) ;
 int strcmp (int ,char*) ;

void
stringer (

   register int append_zero )
{
  register unsigned int c;
  char *start;
  if (is_it_end_of_statement ())
    {
      c = 0;
      ++input_line_pointer;
    }
  else
    {
      c = ',';
    }


  if (now_seg == absolute_section)
    {
      as_bad (_("strings must be placed into a section"));
      c = 0;
      ignore_rest_of_line ();
    }

  while (c == ',' || c == '<' || c == '"')
    {
      SKIP_WHITESPACE ();
      switch (*input_line_pointer)
 {
 case '\"':
   ++input_line_pointer;
   start = input_line_pointer;
   while (is_a_char (c = next_char_of_string ()))
     {
       FRAG_APPEND_1_CHAR (c);
     }
   if (append_zero)
     {
       FRAG_APPEND_1_CHAR (0);
     }
   know (input_line_pointer[-1] == '\"');
   break;
 case '<':
   input_line_pointer++;
   c = get_single_number ();
   FRAG_APPEND_1_CHAR (c);
   if (*input_line_pointer != '>')
     {
       as_bad (_("expected <nn>"));
     }
   input_line_pointer++;
   break;
 case ',':
   input_line_pointer++;
   break;
 }
      SKIP_WHITESPACE ();
      c = *input_line_pointer;
    }

  demand_empty_rest_of_line ();
}
