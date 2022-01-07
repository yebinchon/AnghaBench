
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indent_level ;
 int outc (char) ;

void do_indent ()
{
 int i = indent_level * 8;

 while (i >= 8) {
  outc ('\t');
  i -= 8;
 }

 while (i > 0) {
  outc (' ');
  --i;
 }
}
