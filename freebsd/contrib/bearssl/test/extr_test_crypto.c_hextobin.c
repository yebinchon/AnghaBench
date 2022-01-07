
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t
hextobin(unsigned char *dst, const char *src)
{
 size_t num;
 unsigned acc;
 int z;

 num = 0;
 z = 0;
 acc = 0;
 while (*src != 0) {
  int c = *src ++;
  if (c >= '0' && c <= '9') {
   c -= '0';
  } else if (c >= 'A' && c <= 'F') {
   c -= ('A' - 10);
  } else if (c >= 'a' && c <= 'f') {
   c -= ('a' - 10);
  } else {
   continue;
  }
  if (z) {
   *dst ++ = (acc << 4) + c;
   num ++;
  } else {
   acc = c;
  }
  z = !z;
 }
 return num;
}
