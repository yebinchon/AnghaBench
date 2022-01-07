
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISPRINT (scalar_t__) ;
 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 int as_bad (int ,scalar_t__) ;
 int ignore_rest_of_line () ;
 scalar_t__* input_line_pointer ;
 scalar_t__* is_end_of_line ;
 int know (scalar_t__) ;

void
demand_empty_rest_of_line (void)
{
  SKIP_WHITESPACE ();
  if (is_end_of_line[(unsigned char) *input_line_pointer])
    input_line_pointer++;
  else
    {
      if (ISPRINT (*input_line_pointer))
 as_bad (_("junk at end of line, first unrecognized character is `%c'"),
   *input_line_pointer);
      else
 as_bad (_("junk at end of line, first unrecognized character valued 0x%x"),
   *input_line_pointer);
      ignore_rest_of_line ();
    }


  know (is_end_of_line[(unsigned char) input_line_pointer[-1]]);
}
