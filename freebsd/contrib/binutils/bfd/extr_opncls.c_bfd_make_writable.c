
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfd_in_memory {scalar_t__ buffer; scalar_t__ size; } ;
typedef int bfd_boolean ;
struct TYPE_3__ {scalar_t__ direction; scalar_t__ where; int flags; struct bfd_in_memory* iostream; } ;
typedef TYPE_1__ bfd ;


 int BFD_IN_MEMORY ;
 int FALSE ;
 int TRUE ;
 int bfd_error_invalid_operation ;
 struct bfd_in_memory* bfd_malloc (int) ;
 int bfd_set_error (int ) ;
 scalar_t__ no_direction ;
 scalar_t__ write_direction ;

bfd_boolean
bfd_make_writable (bfd *abfd)
{
  struct bfd_in_memory *bim;

  if (abfd->direction != no_direction)
    {
      bfd_set_error (bfd_error_invalid_operation);
      return FALSE;
    }

  bim = bfd_malloc (sizeof (struct bfd_in_memory));
  abfd->iostream = bim;

  bim->size = 0;
  bim->buffer = 0;

  abfd->flags |= BFD_IN_MEMORY;
  abfd->direction = write_direction;
  abfd->where = 0;

  return TRUE;
}
