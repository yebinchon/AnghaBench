
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sb ;


 int _ (char*) ;
 int as_bad (int ,char const*,char const*) ;
 int buffer_and_nest (char const*,char const*,int *,int ) ;
 int buffer_limit ;
 int get_line_sb ;
 int input_line_pointer ;
 int input_scrub_include_sb (int *,int ,int) ;
 int input_scrub_next_buffer (int *) ;
 int sb_add_sb (int *,int *) ;
 int sb_kill (int *) ;
 int sb_new (int *) ;

void
do_repeat (int count, const char *start, const char *end)
{
  sb one;
  sb many;

  sb_new (&one);
  if (!buffer_and_nest (start, end, &one, get_line_sb))
    {
      as_bad (_("%s without %s"), start, end);
      return;
    }

  sb_new (&many);
  while (count-- > 0)
    sb_add_sb (&many, &one);

  sb_kill (&one);

  input_scrub_include_sb (&many, input_line_pointer, 1);
  sb_kill (&many);
  buffer_limit = input_scrub_next_buffer (&input_line_pointer);
}
