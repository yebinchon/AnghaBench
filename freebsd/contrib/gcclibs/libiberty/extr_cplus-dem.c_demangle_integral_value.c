
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_stuff {int dummy; } ;
typedef int string ;


 int INTBUF_SIZE ;
 int consume_count (char const**) ;
 int consume_count_with_underscores (char const**) ;
 int demangle_expression (struct work_stuff*,char const**,int *,int ) ;
 int demangle_qualified (struct work_stuff*,char const**,int *,int ,int) ;
 int sprintf (char*,char*,int) ;
 int string_append (int *,char*) ;
 int string_appendn (int *,char*,int) ;
 int tk_integral ;

__attribute__((used)) static int
demangle_integral_value (struct work_stuff *work,
                         const char **mangled, string *s)
{
  int success;

  if (**mangled == 'E')
    success = demangle_expression (work, mangled, s, tk_integral);
  else if (**mangled == 'Q' || **mangled == 'K')
    success = demangle_qualified (work, mangled, s, 0, 1);
  else
    {
      int value;



      int multidigit_without_leading_underscore = 0;
      int leave_following_underscore = 0;

      success = 0;

      if (**mangled == '_')
        {
   if (mangled[0][1] == 'm')
     {




       multidigit_without_leading_underscore = 1;
       string_appendn (s, "-", 1);
       (*mangled) += 2;
     }
   else
     {



       leave_following_underscore = 1;
     }
 }
      else
 {

   if (**mangled == 'm')
   {
     string_appendn (s, "-", 1);
     (*mangled)++;
   }




   multidigit_without_leading_underscore = 1;


   leave_following_underscore = 1;
 }





      if (multidigit_without_leading_underscore)
 value = consume_count (mangled);
      else
 value = consume_count_with_underscores (mangled);

      if (value != -1)
 {
   char buf[INTBUF_SIZE];
   sprintf (buf, "%d", value);
   string_append (s, buf);
   if ((value > 9 || multidigit_without_leading_underscore)
       && ! leave_following_underscore
       && **mangled == '_')
     (*mangled)++;


   success = 1;
 }
      }

  return success;
}
