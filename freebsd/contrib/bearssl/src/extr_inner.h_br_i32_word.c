
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
br_i32_word(const uint32_t *a, uint32_t off)
{
 size_t u;
 unsigned j;

 u = (size_t)(off >> 5) + 1;
 j = (unsigned)off & 31;
 if (j == 0) {
  return a[u];
 } else {
  return (a[u] >> j) | (a[u + 1] << (32 - j));
 }
}
