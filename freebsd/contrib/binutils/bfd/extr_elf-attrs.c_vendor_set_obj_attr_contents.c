
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tag; int attr; struct TYPE_3__* next; } ;
typedef TYPE_1__ obj_attribute_list ;
typedef int obj_attribute ;
typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd ;


 int NUM_KNOWN_OBJ_ATTRIBUTES ;
 int Tag_File ;
 int bfd_put_32 (int *,int,int *) ;
 int ** elf_known_obj_attributes (int *) ;
 TYPE_1__** elf_other_obj_attributes (int *) ;
 int memcpy (int *,char const*,size_t) ;
 int strlen (char const*) ;
 char* vendor_obj_attr_name (int *,int) ;
 int * write_obj_attribute (int *,int,int *) ;

__attribute__((used)) static void
vendor_set_obj_attr_contents (bfd *abfd, bfd_byte *contents, bfd_vma size,
         int vendor)
{
  bfd_byte *p;
  obj_attribute *attr;
  obj_attribute_list *list;
  int i;
  const char *vendor_name = vendor_obj_attr_name (abfd, vendor);
  size_t vendor_length = strlen (vendor_name) + 1;

  p = contents;
  bfd_put_32 (abfd, size, p);
  p += 4;
  memcpy (p, vendor_name, vendor_length);
  p += vendor_length;
  *(p++) = Tag_File;
  bfd_put_32 (abfd, size - 4 - vendor_length, p);
  p += 4;

  attr = elf_known_obj_attributes (abfd)[vendor];
  for (i = 4; i < NUM_KNOWN_OBJ_ATTRIBUTES; i++)
    p = write_obj_attribute (p, i, &attr[i]);

  for (list = elf_other_obj_attributes (abfd)[vendor];
       list;
       list = list->next)
    p = write_obj_attribute (p, list->tag, &list->attr);
}
