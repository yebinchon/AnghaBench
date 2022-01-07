
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int Dwarf_Unsigned ;



char *
_dwarf_read_string(void *data, Dwarf_Unsigned size, uint64_t *offsetp)
{
 char *ret, *src;

 ret = src = (char *) data + *offsetp;

 while (*src != '\0' && *offsetp < size) {
  src++;
  (*offsetp)++;
 }

 if (*src == '\0' && *offsetp < size)
  (*offsetp)++;

 return (ret);
}
