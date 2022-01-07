
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;



__attribute__((used)) static inline u32 *fill16_col(u32 *dst, int rows, u32 m[])
{
 while (rows) {
  *dst++ = m[0];







  rows--;
 }
 return dst;
}
