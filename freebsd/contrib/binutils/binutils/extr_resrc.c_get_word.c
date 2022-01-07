
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ feof (int *) ;
 int getc (int *) ;
 int unexpected_eof (char const*) ;

__attribute__((used)) static int
get_word (FILE *e, const char *msg)
{
  int b1, b2;

  b1 = getc (e);
  b2 = getc (e);
  if (feof (e))
    unexpected_eof (msg);
  return ((b2 & 0xff) << 8) | (b1 & 0xff);
}
