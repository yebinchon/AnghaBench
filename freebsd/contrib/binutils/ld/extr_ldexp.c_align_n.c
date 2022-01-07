
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;



__attribute__((used)) static bfd_vma
align_n (bfd_vma value, bfd_vma align)
{
  if (align <= 1)
    return value;

  value = (value + align - 1) / align;
  return value * align;
}
