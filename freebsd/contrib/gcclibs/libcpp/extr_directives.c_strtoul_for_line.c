
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uchar ;


 int ISDIGIT (scalar_t__) ;

__attribute__((used)) static int
strtoul_for_line (const uchar *str, unsigned int len, long unsigned int *nump)
{
  unsigned long reg = 0;
  uchar c;
  while (len--)
    {
      c = *str++;
      if (!ISDIGIT (c))
 return 1;
      reg *= 10;
      reg += c - '0';
    }
  *nump = reg;
  return 0;
}
