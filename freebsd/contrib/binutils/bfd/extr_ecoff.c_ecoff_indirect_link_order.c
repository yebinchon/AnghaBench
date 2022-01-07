
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* section; } ;
struct TYPE_10__ {TYPE_1__ indirect; } ;
struct bfd_link_order {scalar_t__ offset; scalar_t__ size; TYPE_2__ u; } ;
struct bfd_link_info {scalar_t__ relocatable; } ;
typedef scalar_t__ file_ptr ;
typedef int bfd_size_type ;
typedef void bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_11__ {int flags; scalar_t__ size; scalar_t__ output_offset; int reloc_count; scalar_t__ rel_filepos; struct TYPE_11__* output_section; int * owner; } ;
typedef TYPE_3__ asection ;
struct TYPE_12__ {int external_reloc_size; int (* relocate_section ) (int *,struct bfd_link_info*,int *,TYPE_3__*,void*,void*) ;} ;


 int BFD_ASSERT (int) ;
 int FALSE ;
 int SEC_HAS_CONTENTS ;
 int SEEK_SET ;
 int TRUE ;
 int bfd_bread (void*,int,int *) ;
 int bfd_bwrite (void*,int,int *) ;
 void* bfd_malloc (int) ;
 int bfd_malloc_and_get_section (int *,TYPE_3__*,void**) ;
 scalar_t__ bfd_seek (int *,scalar_t__,int ) ;
 int bfd_set_section_contents (int *,TYPE_3__*,void*,scalar_t__,scalar_t__) ;
 TYPE_6__* ecoff_backend (int *) ;
 int free (void*) ;
 int stub1 (int *,struct bfd_link_info*,int *,TYPE_3__*,void*,void*) ;

__attribute__((used)) static bfd_boolean
ecoff_indirect_link_order (bfd *output_bfd,
      struct bfd_link_info *info,
      asection *output_section,
      struct bfd_link_order *link_order)
{
  asection *input_section;
  bfd *input_bfd;
  bfd_byte *contents = ((void*)0);
  bfd_size_type external_reloc_size;
  bfd_size_type external_relocs_size;
  void * external_relocs = ((void*)0);

  BFD_ASSERT ((output_section->flags & SEC_HAS_CONTENTS) != 0);

  input_section = link_order->u.indirect.section;
  input_bfd = input_section->owner;
  if (input_section->size == 0)
    return TRUE;

  BFD_ASSERT (input_section->output_section == output_section);
  BFD_ASSERT (input_section->output_offset == link_order->offset);
  BFD_ASSERT (input_section->size == link_order->size);


  if (!bfd_malloc_and_get_section (input_bfd, input_section, &contents))
    goto error_return;



  external_reloc_size = ecoff_backend (input_bfd)->external_reloc_size;
  external_relocs_size = external_reloc_size * input_section->reloc_count;

  external_relocs = bfd_malloc (external_relocs_size);
  if (external_relocs == ((void*)0) && external_relocs_size != 0)
    goto error_return;

  if (bfd_seek (input_bfd, input_section->rel_filepos, SEEK_SET) != 0
      || (bfd_bread (external_relocs, external_relocs_size, input_bfd)
   != external_relocs_size))
    goto error_return;


  if (! ((*ecoff_backend (input_bfd)->relocate_section)
  (output_bfd, info, input_bfd, input_section, contents,
   external_relocs)))
    goto error_return;


  if (! bfd_set_section_contents (output_bfd,
      output_section,
      contents,
      input_section->output_offset,
      input_section->size))
    goto error_return;





  if (info->relocatable)
    {
      file_ptr pos = (output_section->rel_filepos
        + output_section->reloc_count * external_reloc_size);
      if (bfd_seek (output_bfd, pos, SEEK_SET) != 0
   || (bfd_bwrite (external_relocs, external_relocs_size, output_bfd)
       != external_relocs_size))
 goto error_return;
      output_section->reloc_count += input_section->reloc_count;
    }

  if (contents != ((void*)0))
    free (contents);
  if (external_relocs != ((void*)0))
    free (external_relocs);
  return TRUE;

 error_return:
  if (contents != ((void*)0))
    free (contents);
  if (external_relocs != ((void*)0))
    free (external_relocs);
  return FALSE;
}
