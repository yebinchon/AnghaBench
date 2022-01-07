
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (unsigned char const*,unsigned char const*,size_t) ;

__attribute__((used)) static int
eqbigint(const unsigned char *b1, size_t len1,
 const unsigned char *b2, size_t len2)
{
 while (len1 > 0 && *b1 == 0) {
  b1 ++;
  len1 --;
 }
 while (len2 > 0 && *b2 == 0) {
  b2 ++;
  len2 --;
 }
 if (len1 != len2) {
  return 0;
 }
 return memcmp(b1, b2, len1) == 0;
}
