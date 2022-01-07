
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ X_op; int X_add_number; } ;
typedef TYPE_1__ expressionS ;


 scalar_t__ ISALPHA (char) ;
 int MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT ;
 scalar_t__ O_constant ;
 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 int as_bad (int ,char*) ;
 int as_warn (int ) ;
 int demand_empty_rest_of_line () ;
 int expression (TYPE_1__*) ;
 char* frag_more (int) ;
 int hex_float (int,char*) ;
 int ignore_rest_of_line () ;
 char* input_line_pointer ;
 scalar_t__ is_it_end_of_statement () ;
 int know (int) ;
 char* md_atof (int,char*,int*) ;
 int md_flush_pending_output () ;
 int memcpy (char*,char*,unsigned int) ;
 int need_pass_2 ;

void
float_cons (
     register int float_type )
{
  register char *p;
  int length;
  register char *err;
  char temp[MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT];

  if (is_it_end_of_statement ())
    {
      demand_empty_rest_of_line ();
      return;
    }





  do
    {

      SKIP_WHITESPACE ();





      if (input_line_pointer[0] == '0'
   && ISALPHA (input_line_pointer[1]))
 input_line_pointer += 2;



      if (input_line_pointer[0] == ':')
 {
   ++input_line_pointer;
   length = hex_float (float_type, temp);
   if (length < 0)
     {
       ignore_rest_of_line ();
       return;
     }
 }
      else
 {
   err = md_atof (float_type, temp, &length);
   know (length <= MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT);
   know (length > 0);
   if (err)
     {
       as_bad (_("bad floating literal: %s"), err);
       ignore_rest_of_line ();
       return;
     }
 }

      if (!need_pass_2)
 {
   int count;

   count = 1;
   while (--count >= 0)
     {
       p = frag_more (length);
       memcpy (p, temp, (unsigned int) length);
     }
 }
      SKIP_WHITESPACE ();
    }
  while (*input_line_pointer++ == ',');


  --input_line_pointer;
  demand_empty_rest_of_line ();
}
