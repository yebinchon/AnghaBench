
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int LA_EMIT_CHAR (int,struct ui_file*,char) ;
 int fputs_filtered (char*,struct ui_file*) ;

__attribute__((used)) static void
f_printchar (int c, struct ui_file *stream)
{
  fputs_filtered ("'", stream);
  LA_EMIT_CHAR (c, stream, '\'');
  fputs_filtered ("'", stream);
}
