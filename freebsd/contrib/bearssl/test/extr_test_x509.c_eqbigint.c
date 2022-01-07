
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (unsigned char const*,unsigned char const*,size_t) ;

__attribute__((used)) static int
eqbigint(const unsigned char *b1, size_t b1_len,
 const unsigned char *b2, size_t b2_len)
{
 while (b1_len > 0 && *b1 == 0) {
  b1 ++;
  b1_len --;
 }
 while (b2_len > 0 && *b2 == 0) {
  b2 ++;
  b2_len --;
 }
 return b1_len == b2_len && memcmp(b1, b2, b1_len) == 0;
}
