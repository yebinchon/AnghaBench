
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int col ;
 int fputc (char,int ) ;
 int stdout ;

__attribute__((used)) static int
col_output(int len)
{
  int wrapped = 0;

  col += len;
  if (col > 77) {
    fputc('\n', stdout);
    col = len;
    wrapped = 1;
  }
  return wrapped;
}
