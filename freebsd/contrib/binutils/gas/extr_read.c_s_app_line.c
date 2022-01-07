
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 int as_warn (int ,int) ;
 char* demand_copy_string (int*) ;
 int demand_empty_rest_of_line () ;
 int get_absolute_expression () ;
 scalar_t__ get_linefile_number (int*) ;
 int ignore_rest_of_line () ;
 char* input_line_pointer ;
 int * is_end_of_line ;
 scalar_t__ listing ;
 int listing_source_line (int) ;
 int new_logical_line_flags (char*,int,int) ;

void
s_app_line (int appline)
{
  char *file = ((void*)0);
  int l;


  if (appline)
    l = get_absolute_expression ();
  else if (!get_linefile_number (&l))
    {
      ignore_rest_of_line ();
      return;
    }

  l--;

  if (l < -1)
    as_warn (_("line numbers must be positive; line number %d rejected"),
      l + 1);
  else
    {
      int flags = 0;
      int length = 0;

      if (!appline)
 {
   SKIP_WHITESPACE ();

   if (*input_line_pointer == '"')
     file = demand_copy_string (&length);

   if (file)
     {
       int this_flag;

       while (get_linefile_number (&this_flag))
  switch (this_flag)
    {
    case 1:
    case 2:
      if (flags && flags != (1 << this_flag))
        as_warn (_("incompatible flag %i in line directive"),
          this_flag);
      else
        flags |= 1 << this_flag;
      break;

    case 3:
    case 4:

      break;

    default:
      as_warn (_("unsupported flag %i in line directive"),
        this_flag);
      break;
    }

       if (!is_end_of_line[(unsigned char)*input_line_pointer])
  file = 0;
     }
 }

      if (appline || file)
 {
   new_logical_line_flags (file, l, flags);




 }
    }
  if (appline || file)
    demand_empty_rest_of_line ();
  else
    ignore_rest_of_line ();
}
