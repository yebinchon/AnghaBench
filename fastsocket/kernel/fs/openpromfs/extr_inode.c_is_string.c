
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_string(unsigned char *p, int len)
{
 int i;

 for (i = 0; i < len; i++) {
  unsigned char val = p[i];

  if ((i && !val) ||
      (val >= ' ' && val <= '~'))
   continue;

  return 0;
 }

 return 1;
}
