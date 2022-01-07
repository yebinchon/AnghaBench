
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lin ;


 scalar_t__ ISDIGIT (unsigned char) ;

__attribute__((used)) static char *
readnum (char *s, lin *pnum)
{
  unsigned char c = *s;
  lin num = 0;

  if (! ISDIGIT (c))
    return 0;

  do
    {
      num = c - '0' + num * 10;
      c = *++s;
    }
  while (ISDIGIT (c));

  *pnum = num;
  return s;
}
