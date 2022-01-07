
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
swapbytes(void *v, size_t len)
{
 unsigned char *p = v;
 unsigned char t;

 while (len > 1) {
  t = p[0];
  p[0] = p[1];
  p[1] = t;
  p += 2;
  len -= 2;
 }
}
