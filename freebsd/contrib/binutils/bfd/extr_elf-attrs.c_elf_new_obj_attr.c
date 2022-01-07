
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tag; int attr; struct TYPE_4__* next; } ;
typedef TYPE_1__ obj_attribute_list ;
typedef int obj_attribute ;
typedef int bfd ;


 int NUM_KNOWN_OBJ_ATTRIBUTES ;
 scalar_t__ bfd_alloc (int *,int) ;
 int ** elf_known_obj_attributes (int *) ;
 TYPE_1__** elf_other_obj_attributes (int *) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static obj_attribute *
elf_new_obj_attr (bfd *abfd, int vendor, int tag)
{
  obj_attribute *attr;
  obj_attribute_list *list;
  obj_attribute_list *p;
  obj_attribute_list **lastp;


  if (tag < NUM_KNOWN_OBJ_ATTRIBUTES)
    {

      attr = &elf_known_obj_attributes (abfd)[vendor][tag];
    }
  else
    {

      list = (obj_attribute_list *)
 bfd_alloc (abfd, sizeof (obj_attribute_list));
      memset (list, 0, sizeof (obj_attribute_list));
      list->tag = tag;

      lastp = &elf_other_obj_attributes (abfd)[vendor];
      for (p = *lastp; p; p = p->next)
 {
   if (tag < p->tag)
     break;
   lastp = &p->next;
 }
      list->next = *lastp;
      *lastp = list;
      attr = &list->attr;
    }

  return attr;
}
