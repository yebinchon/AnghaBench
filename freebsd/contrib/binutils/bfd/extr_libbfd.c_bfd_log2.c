
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;



unsigned int
bfd_log2 (bfd_vma x)
{
  unsigned int result = 0;

  while ((x = (x >> 1)) != 0)
    ++result;
  return result;
}
