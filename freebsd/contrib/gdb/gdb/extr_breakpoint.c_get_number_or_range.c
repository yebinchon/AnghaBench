
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int get_number (char**) ;
 int get_number_trailer (char**,char) ;
 scalar_t__ isspace (int) ;

int
get_number_or_range (char **pp)
{
  static int last_retval, end_value;
  static char *end_ptr;
  static int in_range = 0;

  if (**pp != '-')
    {


      last_retval = get_number_trailer (pp, '-');
      if (**pp == '-')
 {
   char **temp;





   temp = &end_ptr;
   end_ptr = *pp + 1;
   while (isspace ((int) *end_ptr))
     end_ptr++;
   end_value = get_number (temp);
   if (end_value < last_retval)
     {
       error ("inverted range");
     }
   else if (end_value == last_retval)
     {



       *pp = end_ptr;
     }
   else
     in_range = 1;
 }
    }
  else if (! in_range)
    error ("negative value");
  else
    {






      if (++last_retval == end_value)
 {

   *pp = end_ptr;
   in_range = 0;
 }
    }
  return last_retval;
}
