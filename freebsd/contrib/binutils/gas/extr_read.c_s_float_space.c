
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ offsetT ;


 scalar_t__ ISALPHA (char) ;
 int MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT ;
 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 int as_bad (int ,...) ;
 int demand_empty_rest_of_line () ;
 scalar_t__ flag_mri ;
 char* frag_more (int) ;
 scalar_t__ get_absolute_expression () ;
 int hex_float (int,char*) ;
 int ignore_rest_of_line () ;
 char* input_line_pointer ;
 int know (int) ;
 char* md_atof (int,char*,int*) ;
 int memcpy (char*,char*,unsigned int) ;
 int mri_comment_end (char*,char) ;
 char* mri_comment_field (char*) ;

void
s_float_space (int float_type)
{
  offsetT count;
  int flen;
  char temp[MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT];
  char *stop = ((void*)0);
  char stopc = 0;

  if (flag_mri)
    stop = mri_comment_field (&stopc);

  count = get_absolute_expression ();

  SKIP_WHITESPACE ();
  if (*input_line_pointer != ',')
    {
      as_bad (_("missing value"));
      ignore_rest_of_line ();
      if (flag_mri)
 mri_comment_end (stop, stopc);
      return;
    }

  ++input_line_pointer;

  SKIP_WHITESPACE ();



  if (input_line_pointer[0] == '0'
      && ISALPHA (input_line_pointer[1]))
    input_line_pointer += 2;



  if (input_line_pointer[0] == ':')
    {
      flen = hex_float (float_type, temp);
      if (flen < 0)
 {
   ignore_rest_of_line ();
   if (flag_mri)
     mri_comment_end (stop, stopc);
   return;
 }
    }
  else
    {
      char *err;

      err = md_atof (float_type, temp, &flen);
      know (flen <= MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT);
      know (flen > 0);
      if (err)
 {
   as_bad (_("bad floating literal: %s"), err);
   ignore_rest_of_line ();
   if (flag_mri)
     mri_comment_end (stop, stopc);
   return;
 }
    }

  while (--count >= 0)
    {
      char *p;

      p = frag_more (flen);
      memcpy (p, temp, (unsigned int) flen);
    }

  demand_empty_rest_of_line ();

  if (flag_mri)
    mri_comment_end (stop, stopc);
}
