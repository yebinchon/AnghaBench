
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int as_warn (int ) ;
 int demand_empty_rest_of_line () ;
 void* get_absolute_expression () ;
 char* input_line_pointer ;
 int paper_height ;
 void* paper_width ;

void
listing_psize (int width_only)
{
  if (! width_only)
    {
      paper_height = get_absolute_expression ();

      if (paper_height < 0 || paper_height > 1000)
 {
   paper_height = 0;
   as_warn (_("strange paper height, set to no form"));
 }

      if (*input_line_pointer != ',')
 {
   demand_empty_rest_of_line ();
   return;
 }

      ++input_line_pointer;
    }

  paper_width = get_absolute_expression ();

  demand_empty_rest_of_line ();
}
