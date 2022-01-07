
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
parse_dec(const char *s, unsigned len, int *val)
{
 int acc;

 acc = 0;
 while (len -- > 0) {
  int c;

  c = *s ++;
  if (c >= '0' && c <= '9') {
   acc = (acc * 10) + (c - '0');
  } else {
   return -1;
  }
 }
 *val = acc;
 return 0;
}
