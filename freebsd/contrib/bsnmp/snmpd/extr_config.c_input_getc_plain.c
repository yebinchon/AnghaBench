
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int input_getc_raw () ;
 int input_ungetc (int) ;

__attribute__((used)) static int
input_getc_plain(void)
{
 int c;

  again:
 if ((c = input_getc_raw()) == '\\') {
  if ((c = input_getc_raw()) == '\n')
   goto again;
  if (c != EOF)
   input_ungetc(c);
  return ('\\');
 }
 return (c);
}
