
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int ada_emit_char (int,struct ui_file*,char,int) ;
 int fputs_filtered (char*,struct ui_file*) ;

void
ada_printchar (int c, struct ui_file *stream)
{
  fputs_filtered ("'", stream);
  ada_emit_char (c, stream, '\'', 1);
  fputs_filtered ("'", stream);
}
