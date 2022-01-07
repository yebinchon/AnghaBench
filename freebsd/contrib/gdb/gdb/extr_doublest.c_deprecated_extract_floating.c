
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DOUBLEST ;


 int extract_floating_by_length (void const*,int) ;

DOUBLEST
deprecated_extract_floating (const void *addr, int len)
{
  return extract_floating_by_length (addr, len);
}
