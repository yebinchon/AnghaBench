
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (unsigned char) ;

__attribute__((used)) static int getint(const char **string)
{
  int i = 0;

  while (isdigit((unsigned char)**string) != 0) {
    i = i * 10 + (**string - '0');
    (*string)++;
  }

  if (i < 0 || i > 32767)
    i = 32767;

  return i;
}
