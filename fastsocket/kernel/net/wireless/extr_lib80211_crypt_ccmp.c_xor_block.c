
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline void xor_block(u8 * b, u8 * a, size_t len)
{
 int i;
 for (i = 0; i < len; i++)
  b[i] ^= a[i];
}
