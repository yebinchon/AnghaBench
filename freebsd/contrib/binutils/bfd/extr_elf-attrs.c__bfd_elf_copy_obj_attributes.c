
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int type; scalar_t__* s; int i; } ;
struct TYPE_5__ {int tag; TYPE_2__ attr; struct TYPE_5__* next; } ;
typedef TYPE_1__ obj_attribute_list ;
typedef TYPE_2__ obj_attribute ;
typedef int bfd ;


 int NUM_KNOWN_OBJ_ATTRIBUTES ;
 int OBJ_ATTR_FIRST ;
 int OBJ_ATTR_LAST ;
 scalar_t__* _bfd_elf_attr_strdup (int *,scalar_t__*) ;
 int abort () ;
 int bfd_elf_add_obj_attr_compat (int *,int,int ,scalar_t__*) ;
 int bfd_elf_add_obj_attr_int (int *,int,int ,int ) ;
 int bfd_elf_add_obj_attr_string (int *,int,int ,scalar_t__*) ;
 TYPE_2__** elf_known_obj_attributes (int *) ;
 TYPE_1__** elf_other_obj_attributes (int *) ;

void
_bfd_elf_copy_obj_attributes (bfd *ibfd, bfd *obfd)
{
  obj_attribute *in_attr;
  obj_attribute *out_attr;
  obj_attribute_list *list;
  int i;
  int vendor;

  for (vendor = OBJ_ATTR_FIRST; vendor <= OBJ_ATTR_LAST; vendor++)
    {
      in_attr = &elf_known_obj_attributes (ibfd)[vendor][4];
      out_attr = &elf_known_obj_attributes (obfd)[vendor][4];
      for (i = 4; i < NUM_KNOWN_OBJ_ATTRIBUTES; i++)
 {
   out_attr->type = in_attr->type;
   out_attr->i = in_attr->i;
   if (in_attr->s && *in_attr->s)
     out_attr->s = _bfd_elf_attr_strdup (obfd, in_attr->s);
   in_attr++;
   out_attr++;
 }

      for (list = elf_other_obj_attributes (ibfd)[vendor];
    list;
    list = list->next)
 {
   in_attr = &list->attr;
   switch (in_attr->type)
     {
     case 1:
       bfd_elf_add_obj_attr_int (obfd, vendor, list->tag, in_attr->i);
       break;
     case 2:
       bfd_elf_add_obj_attr_string (obfd, vendor, list->tag,
        in_attr->s);
       break;
     case 3:
       bfd_elf_add_obj_attr_compat (obfd, vendor, in_attr->i,
        in_attr->s);
       break;
     default:
       abort ();
     }
 }
    }
}
