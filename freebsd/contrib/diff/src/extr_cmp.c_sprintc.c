
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isprint (unsigned char) ;

__attribute__((used)) static void
sprintc (char *buf, unsigned char c)
{
  if (! isprint (c))
    {
      if (c >= 128)
 {
   *buf++ = 'M';
   *buf++ = '-';
   c -= 128;
 }
      if (c < 32)
 {
   *buf++ = '^';
   c += 64;
 }
      else if (c == 127)
 {
   *buf++ = '^';
   c = '?';
 }
    }

  *buf++ = c;
  *buf = 0;
}
