
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct eh_frame_hdr_info {int table; TYPE_1__* hdr_sec; } ;
struct elf_link_hash_table {struct eh_frame_hdr_info eh_info; } ;
struct bfd_link_info {TYPE_2__* input_bfds; scalar_t__ eh_frame_hdr; } ;
typedef int bfd_boolean ;
struct TYPE_7__ {struct TYPE_7__* link_next; } ;
typedef TYPE_2__ bfd ;
struct TYPE_8__ {int size; int output_section; } ;
typedef TYPE_3__ asection ;
struct TYPE_6__ {int flags; int output_section; } ;


 int SEC_EXCLUDE ;
 int TRUE ;
 TYPE_3__* bfd_get_section_by_name (TYPE_2__*,char*) ;
 scalar_t__ bfd_is_abs_section (int ) ;
 struct elf_link_hash_table* elf_hash_table (struct bfd_link_info*) ;

bfd_boolean
_bfd_elf_maybe_strip_eh_frame_hdr (struct bfd_link_info *info)
{
  asection *o;
  bfd *abfd;
  struct elf_link_hash_table *htab;
  struct eh_frame_hdr_info *hdr_info;

  htab = elf_hash_table (info);
  hdr_info = &htab->eh_info;
  if (hdr_info->hdr_sec == ((void*)0))
    return TRUE;

  if (bfd_is_abs_section (hdr_info->hdr_sec->output_section))
    {
      hdr_info->hdr_sec = ((void*)0);
      return TRUE;
    }

  abfd = ((void*)0);
  if (info->eh_frame_hdr)
    for (abfd = info->input_bfds; abfd != ((void*)0); abfd = abfd->link_next)
      {


 o = bfd_get_section_by_name (abfd, ".eh_frame");
 if (o && o->size > 8 && !bfd_is_abs_section (o->output_section))
   break;
      }

  if (abfd == ((void*)0))
    {
      hdr_info->hdr_sec->flags |= SEC_EXCLUDE;
      hdr_info->hdr_sec = ((void*)0);
      return TRUE;
    }

  hdr_info->table = TRUE;
  return TRUE;
}
