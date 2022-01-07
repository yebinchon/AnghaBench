
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bfd_in_memory {scalar_t__ buffer; scalar_t__ size; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_4__ {scalar_t__ where; int direction; int format; int flags; void* iostream; scalar_t__ link_next; } ;
typedef TYPE_1__ bfd ;


 int BFD_IN_MEMORY ;
 int FALSE ;
 int TRUE ;
 struct bfd_in_memory* bfd_malloc (int ) ;
 int bfd_object ;
 int bfd_unknown ;
 int bfd_xcoff_generate_rtinit (TYPE_1__*,char const*,char const*,int ) ;
 int read_direction ;
 int write_direction ;

bfd_boolean
bfd_xcoff_link_generate_rtinit (bfd *abfd,
    const char *init,
    const char *fini,
    bfd_boolean rtld)
{
  struct bfd_in_memory *bim;

  bim = bfd_malloc ((bfd_size_type) sizeof (* bim));
  if (bim == ((void*)0))
    return FALSE;

  bim->size = 0;
  bim->buffer = 0;

  abfd->link_next = 0;
  abfd->format = bfd_object;
  abfd->iostream = (void *) bim;
  abfd->flags = BFD_IN_MEMORY;
  abfd->direction = write_direction;
  abfd->where = 0;

  if (! bfd_xcoff_generate_rtinit (abfd, init, fini, rtld))
    return FALSE;


  abfd->format = bfd_unknown;
  abfd->direction = read_direction;
  abfd->where = 0;

  return TRUE;
}
