
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* bfd_boolean ;
struct TYPE_10__ {scalar_t__ any; } ;
struct TYPE_11__ {scalar_t__ direction; int flags; TYPE_1__ tdata; scalar_t__ outsymbols; scalar_t__ symcount; scalar_t__ sections; void* target_defaulted; void* mtime_set; void* cacheable; int * usrdata; scalar_t__ section_count; void* output_has_begun; void* opened_once; scalar_t__ origin; int * my_archive; int format; scalar_t__ where; int * arch_info; } ;
typedef TYPE_2__ bfd ;


 int BFD_IN_MEMORY ;
 int BFD_SEND (TYPE_2__*,int ,TYPE_2__*) ;
 int BFD_SEND_FMT (TYPE_2__*,int ,TYPE_2__*) ;
 void* FALSE ;
 void* TRUE ;
 int _bfd_write_contents ;
 int _close_and_cleanup ;
 int bfd_check_format (TYPE_2__*,int ) ;
 int bfd_default_arch_struct ;
 int bfd_error_invalid_operation ;
 int bfd_object ;
 int bfd_section_list_clear (TYPE_2__*) ;
 int bfd_set_error (int ) ;
 int bfd_unknown ;
 scalar_t__ read_direction ;
 scalar_t__ write_direction ;

bfd_boolean
bfd_make_readable (bfd *abfd)
{
  if (abfd->direction != write_direction || !(abfd->flags & BFD_IN_MEMORY))
    {
      bfd_set_error (bfd_error_invalid_operation);
      return FALSE;
    }

  if (! BFD_SEND_FMT (abfd, _bfd_write_contents, (abfd)))
    return FALSE;

  if (! BFD_SEND (abfd, _close_and_cleanup, (abfd)))
    return FALSE;


  abfd->arch_info = &bfd_default_arch_struct;

  abfd->where = 0;
  abfd->format = bfd_unknown;
  abfd->my_archive = ((void*)0);
  abfd->origin = 0;
  abfd->opened_once = FALSE;
  abfd->output_has_begun = FALSE;
  abfd->section_count = 0;
  abfd->usrdata = ((void*)0);
  abfd->cacheable = FALSE;
  abfd->flags = BFD_IN_MEMORY;
  abfd->mtime_set = FALSE;

  abfd->target_defaulted = TRUE;
  abfd->direction = read_direction;
  abfd->sections = 0;
  abfd->symcount = 0;
  abfd->outsymbols = 0;
  abfd->tdata.any = 0;

  bfd_section_list_clear (abfd);
  bfd_check_format (abfd, bfd_object);

  return TRUE;
}
