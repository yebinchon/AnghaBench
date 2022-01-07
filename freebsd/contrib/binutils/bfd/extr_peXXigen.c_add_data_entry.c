
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct internal_extra_pe_aouthdr {TYPE_1__* DataDirectory; } ;
typedef int bfd_vma ;
typedef int bfd ;
struct TYPE_8__ {int vma; int flags; } ;
typedef TYPE_2__ asection ;
struct TYPE_9__ {int virt_size; } ;
struct TYPE_7__ {int Size; int VirtualAddress; } ;


 int SEC_DATA ;
 TYPE_2__* bfd_get_section_by_name (int *,char*) ;
 int * coff_section_data (int *,TYPE_2__*) ;
 TYPE_3__* pei_section_data (int *,TYPE_2__*) ;

__attribute__((used)) static void
add_data_entry (bfd * abfd,
  struct internal_extra_pe_aouthdr *aout,
  int idx,
  char *name,
  bfd_vma base)
{
  asection *sec = bfd_get_section_by_name (abfd, name);


  if ((sec != ((void*)0))
      && (coff_section_data (abfd, sec) != ((void*)0))
      && (pei_section_data (abfd, sec) != ((void*)0)))
    {

      int size = pei_section_data (abfd, sec)->virt_size;
      aout->DataDirectory[idx].Size = size;

      if (size)
 {
   aout->DataDirectory[idx].VirtualAddress =
     (sec->vma - base) & 0xffffffff;
   sec->flags |= SEC_DATA;
 }
    }
}
