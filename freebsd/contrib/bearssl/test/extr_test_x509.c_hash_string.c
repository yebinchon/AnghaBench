
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
hash_string(const char *name)
{
 uint32_t hc;

 hc = 0;
 while (*name) {
  int x;

  hc = (hc << 5) - hc;
  x = *(const unsigned char *)name;
  if (x >= 'A' && x <= 'Z') {
   x += 'a' - 'A';
  }
  hc += (uint32_t)x;
  name ++;
 }
 return hc;
}
