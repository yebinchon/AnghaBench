
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *memscan(void *addr, int c, size_t size)
{
 unsigned char *p = addr;

 while (size) {
  if (*p == c)
   return (void *)p;
  p++;
  size--;
 }
   return (void *)p;
}
