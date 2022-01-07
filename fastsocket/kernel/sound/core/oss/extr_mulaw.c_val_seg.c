
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int val_seg(int val)
{
 int r = 0;
 val >>= 7;
 if (val & 0xf0) {
  val >>= 4;
  r += 4;
 }
 if (val & 0x0c) {
  val >>= 2;
  r += 2;
 }
 if (val & 0x02)
  r += 1;
 return r;
}
