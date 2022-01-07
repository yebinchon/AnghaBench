
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* bfd_section; } ;
typedef TYPE_2__ lang_output_section_statement_type ;
struct TYPE_8__ {scalar_t__ current; scalar_t__ origin; scalar_t__ length; int name; } ;
typedef TYPE_3__ lang_memory_region_type ;
typedef int etree_type ;
typedef scalar_t__ bfd_vma ;
struct TYPE_6__ {int name; int owner; } ;


 int _ (char*) ;
 int einfo (int ,scalar_t__,int ,int ,...) ;

__attribute__((used)) static void
os_region_check (lang_output_section_statement_type *os,
   lang_memory_region_type *region,
   etree_type *tree,
   bfd_vma base)
{
  if ((region->current < region->origin
       || (region->current - region->origin > region->length))
      && ((region->current != region->origin + region->length)
   || base == 0))
    {
      if (tree != ((void*)0))
 {
   einfo (_("%X%P: address 0x%v of %B section %s"
     " is not within region %s\n"),
   region->current,
   os->bfd_section->owner,
   os->bfd_section->name,
   region->name);
 }
      else
 {
   einfo (_("%X%P: region %s is full (%B section %s)\n"),
   region->name,
   os->bfd_section->owner,
   os->bfd_section->name);
 }

      region->current = region->origin;
    }
}
