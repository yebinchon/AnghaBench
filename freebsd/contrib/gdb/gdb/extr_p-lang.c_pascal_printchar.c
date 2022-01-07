
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int fputs_filtered (char*,struct ui_file*) ;
 int pascal_one_char (int,struct ui_file*,int*) ;

void
pascal_printchar (int c, struct ui_file *stream)
{
  int in_quotes = 0;
  pascal_one_char (c, stream, &in_quotes);
  if (in_quotes)
    fputs_filtered ("'", stream);
}
