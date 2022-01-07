
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int printstr (struct ui_file*,char*,unsigned int,int,int) ;

void
ada_printstr (struct ui_file *stream, char *string, unsigned int length,
       int force_ellipses, int width)
{
  printstr (stream, string, length, force_ellipses, width);
}
