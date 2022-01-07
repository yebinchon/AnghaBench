
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned long
elf_hash(const char *name)
{
 unsigned long h, t;
 const unsigned char *s;

 s = (const unsigned char *) name;
 h = t = 0;

 for (; *s != '\0'; h = h & ~t) {
  h = (h << 4) + *s++;
  t = h & 0xF0000000UL;
  if (t)
   h ^= t >> 24;
 }

 return (h);
}
