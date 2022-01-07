
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char offsetT ;


 unsigned int ALIGN_LIMIT ;
 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 int abort () ;
 int as_bad (int ) ;
 int as_warn (int ,...) ;
 int demand_empty_rest_of_line () ;
 int do_align (unsigned int,char*,int,int) ;
 scalar_t__ flag_mri ;
 void* get_absolute_expression () ;
 char* input_line_pointer ;
 scalar_t__* is_end_of_line ;
 int md_number_to_chars (char*,char,int) ;
 int mri_comment_end (char*,char) ;
 char* mri_comment_field (char*) ;

__attribute__((used)) static void
s_align (int arg, int bytes_p)
{
  unsigned int align_limit = ALIGN_LIMIT;
  unsigned int align;
  char *stop = ((void*)0);
  char stopc = 0;
  offsetT fill = 0;
  int max;
  int fill_p;

  if (flag_mri)
    stop = mri_comment_field (&stopc);

  if (is_end_of_line[(unsigned char) *input_line_pointer])
    {
      if (arg < 0)
 align = 0;
      else
 align = arg;
    }
  else
    {
      align = get_absolute_expression ();
      SKIP_WHITESPACE ();
    }

  if (bytes_p)
    {

      if (align != 0)
 {
   unsigned int i;

   for (i = 0; (align & 1) == 0; align >>= 1, ++i)
     ;
   if (align != 1)
     as_bad (_("alignment not a power of 2"));

   align = i;
 }
    }

  if (align > align_limit)
    {
      align = align_limit;
      as_warn (_("alignment too large: %u assumed"), align);
    }

  if (*input_line_pointer != ',')
    {
      fill_p = 0;
      max = 0;
    }
  else
    {
      ++input_line_pointer;
      if (*input_line_pointer == ',')
 fill_p = 0;
      else
 {
   fill = get_absolute_expression ();
   SKIP_WHITESPACE ();
   fill_p = 1;
 }

      if (*input_line_pointer != ',')
 max = 0;
      else
 {
   ++input_line_pointer;
   max = get_absolute_expression ();
 }
    }

  if (!fill_p)
    {
      if (arg < 0)
 as_warn (_("expected fill pattern missing"));
      do_align (align, (char *) ((void*)0), 0, max);
    }
  else
    {
      int fill_len;

      if (arg >= 0)
 fill_len = 1;
      else
 fill_len = -arg;
      if (fill_len <= 1)
 {
   char fill_char;

   fill_char = fill;
   do_align (align, &fill_char, fill_len, max);
 }
      else
 {
   char ab[16];

   if ((size_t) fill_len > sizeof ab)
     abort ();
   md_number_to_chars (ab, fill, fill_len);
   do_align (align, ab, fill_len, max);
 }
    }

  demand_empty_rest_of_line ();

  if (flag_mri)
    mri_comment_end (stop, stopc);
}
