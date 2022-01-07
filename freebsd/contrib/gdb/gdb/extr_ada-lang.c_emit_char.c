
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int ada_emit_char (int,struct ui_file*,int,int) ;

__attribute__((used)) static void
emit_char (int c, struct ui_file *stream, int quoter)
{
  ada_emit_char (c, stream, quoter, 1);
}
