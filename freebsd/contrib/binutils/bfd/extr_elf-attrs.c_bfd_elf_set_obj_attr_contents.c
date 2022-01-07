
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd ;


 int OBJ_ATTR_FIRST ;
 int OBJ_ATTR_LAST ;
 int abort () ;
 int vendor_obj_attr_size (int *,int) ;
 int vendor_set_obj_attr_contents (int *,int *,int,int) ;

void
bfd_elf_set_obj_attr_contents (bfd *abfd, bfd_byte *contents, bfd_vma size)
{
  bfd_byte *p;
  int vendor;
  bfd_vma my_size;

  p = contents;
  *(p++) = 'A';
  my_size = 1;
  for (vendor = OBJ_ATTR_FIRST; vendor <= OBJ_ATTR_LAST; vendor++)
    {
      bfd_vma vendor_size = vendor_obj_attr_size (abfd, vendor);
      if (vendor_size)
 vendor_set_obj_attr_contents (abfd, p, vendor_size, vendor);
      p += vendor_size;
      my_size += vendor_size;
    }

  if (size != my_size)
    abort ();
}
