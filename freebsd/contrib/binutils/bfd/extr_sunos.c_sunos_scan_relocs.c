
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct reloc_std_external {int dummy; } ;
struct reloc_ext_external {int dummy; } ;
struct bfd_link_info {int keep_memory; } ;
struct aout_section_data_struct {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_8__ {int rel_filepos; } ;
typedef TYPE_1__ asection ;
struct TYPE_9__ {void* relocs; } ;


 int FALSE ;
 scalar_t__ RELOC_STD_SIZE ;
 int SEEK_SET ;
 int TRUE ;
 TYPE_6__* aout_section_data (TYPE_1__*) ;
 struct aout_section_data_struct* bfd_alloc (int *,int) ;
 int bfd_bread (void*,int,int *) ;
 void* bfd_malloc (int) ;
 scalar_t__ bfd_seek (int *,int ,int ) ;
 int free (void*) ;
 scalar_t__ obj_reloc_entry_size (int *) ;
 int set_aout_section_data (TYPE_1__*,struct aout_section_data_struct*) ;
 int sunos_scan_ext_relocs (struct bfd_link_info*,int *,TYPE_1__*,struct reloc_ext_external*,int) ;
 int sunos_scan_std_relocs (struct bfd_link_info*,int *,TYPE_1__*,struct reloc_std_external*,int) ;

__attribute__((used)) static bfd_boolean
sunos_scan_relocs (struct bfd_link_info *info,
     bfd *abfd,
     asection *sec,
     bfd_size_type rel_size)
{
  void * relocs;
  void * free_relocs = ((void*)0);

  if (rel_size == 0)
    return TRUE;

  if (! info->keep_memory)
    relocs = free_relocs = bfd_malloc (rel_size);
  else
    {
      struct aout_section_data_struct *n;
      bfd_size_type amt = sizeof (struct aout_section_data_struct);

      n = bfd_alloc (abfd, amt);
      if (n == ((void*)0))
 relocs = ((void*)0);
      else
 {
   set_aout_section_data (sec, n);
   relocs = bfd_malloc (rel_size);
   aout_section_data (sec)->relocs = relocs;
 }
    }
  if (relocs == ((void*)0))
    return FALSE;

  if (bfd_seek (abfd, sec->rel_filepos, SEEK_SET) != 0
      || bfd_bread (relocs, rel_size, abfd) != rel_size)
    goto error_return;

  if (obj_reloc_entry_size (abfd) == RELOC_STD_SIZE)
    {
      if (! sunos_scan_std_relocs (info, abfd, sec,
       (struct reloc_std_external *) relocs,
       rel_size))
 goto error_return;
    }
  else
    {
      if (! sunos_scan_ext_relocs (info, abfd, sec,
       (struct reloc_ext_external *) relocs,
       rel_size))
 goto error_return;
    }

  if (free_relocs != ((void*)0))
    free (free_relocs);

  return TRUE;

 error_return:
  if (free_relocs != ((void*)0))
    free (free_relocs);
  return FALSE;
}
