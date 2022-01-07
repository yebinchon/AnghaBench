
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct section_hash_entry {int dummy; } ;
struct TYPE_5__ {void* mtime_set; int flags; void* cacheable; int * usrdata; scalar_t__ section_count; void* output_has_begun; void* opened_once; scalar_t__ origin; int * my_archive; int format; int * section_last; int * sections; int section_htab; scalar_t__ where; int * iostream; int direction; int * arch_info; int * memory; scalar_t__ id; } ;
typedef TYPE_1__ bfd ;


 int BFD_NO_FLAGS ;
 void* FALSE ;
 int _bfd_id_counter ;
 int bfd_default_arch_struct ;
 int bfd_error_no_memory ;
 int bfd_hash_table_init_n (int *,int ,int,int) ;
 int bfd_section_hash_newfunc ;
 int bfd_set_error (int ) ;
 int bfd_unknown ;
 TYPE_1__* bfd_zmalloc (int) ;
 int free (TYPE_1__*) ;
 int no_direction ;
 int * objalloc_create () ;

bfd *
_bfd_new_bfd (void)
{
  bfd *nbfd;

  nbfd = bfd_zmalloc (sizeof (bfd));
  if (nbfd == ((void*)0))
    return ((void*)0);

  nbfd->id = _bfd_id_counter++;

  nbfd->memory = objalloc_create ();
  if (nbfd->memory == ((void*)0))
    {
      bfd_set_error (bfd_error_no_memory);
      free (nbfd);
      return ((void*)0);
    }

  nbfd->arch_info = &bfd_default_arch_struct;

  nbfd->direction = no_direction;
  nbfd->iostream = ((void*)0);
  nbfd->where = 0;
  if (!bfd_hash_table_init_n (& nbfd->section_htab, bfd_section_hash_newfunc,
         sizeof (struct section_hash_entry), 251))
    {
      free (nbfd);
      return ((void*)0);
    }
  nbfd->sections = ((void*)0);
  nbfd->section_last = ((void*)0);
  nbfd->format = bfd_unknown;
  nbfd->my_archive = ((void*)0);
  nbfd->origin = 0;
  nbfd->opened_once = FALSE;
  nbfd->output_has_begun = FALSE;
  nbfd->section_count = 0;
  nbfd->usrdata = ((void*)0);
  nbfd->cacheable = FALSE;
  nbfd->flags = BFD_NO_FLAGS;
  nbfd->mtime_set = FALSE;

  return nbfd;
}
