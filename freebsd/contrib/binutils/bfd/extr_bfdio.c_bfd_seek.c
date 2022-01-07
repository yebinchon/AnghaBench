
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bfd_in_memory {int size; int buffer; } ;
typedef scalar_t__ file_ptr ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
struct TYPE_7__ {int flags; int where; scalar_t__ direction; scalar_t__ format; scalar_t__ origin; TYPE_1__* iovec; int * my_archive; struct bfd_in_memory* iostream; } ;
typedef TYPE_2__ bfd ;
struct TYPE_6__ {int (* bseek ) (TYPE_2__*,scalar_t__,int) ;} ;


 int BFD_ASSERT (int) ;
 int BFD_IN_MEMORY ;
 int EINVAL ;
 int SEEK_CUR ;
 int SEEK_SET ;
 scalar_t__ bfd_archive ;
 int bfd_error_file_truncated ;
 int bfd_error_system_call ;
 int bfd_realloc (int ,int) ;
 int bfd_set_error (int ) ;
 int bfd_tell (TYPE_2__*) ;
 scalar_t__ both_direction ;
 int errno ;
 int stub1 (TYPE_2__*,scalar_t__,int) ;
 scalar_t__ write_direction ;

int
bfd_seek (bfd *abfd, file_ptr position, int direction)
{
  int result;
  file_ptr file_position;




  BFD_ASSERT (direction == SEEK_SET || direction == SEEK_CUR);

  if (direction == SEEK_CUR && position == 0)
    return 0;

  if ((abfd->flags & BFD_IN_MEMORY) != 0)
    {
      struct bfd_in_memory *bim;

      bim = abfd->iostream;

      if (direction == SEEK_SET)
 abfd->where = position;
      else
 abfd->where += position;

      if (abfd->where > bim->size)
 {
   if ((abfd->direction == write_direction) ||
       (abfd->direction == both_direction))
     {
       bfd_size_type newsize, oldsize;

       oldsize = (bim->size + 127) & ~(bfd_size_type) 127;
       bim->size = abfd->where;

       newsize = (bim->size + 127) & ~(bfd_size_type) 127;
       if (newsize > oldsize)
         {
    bim->buffer = bfd_realloc (bim->buffer, newsize);
    if (bim->buffer == 0)
      {
        bim->size = 0;
        return -1;
      }
         }
     }
   else
     {
       abfd->where = bim->size;
       bfd_set_error (bfd_error_file_truncated);
       return -1;
     }
 }
      return 0;
    }

  if (abfd->format != bfd_archive && abfd->my_archive == 0)
    {
      if (direction == SEEK_SET && (bfd_vma) position == abfd->where)
 return 0;
    }
  else
    {
    }

  file_position = position;
  if (direction == SEEK_SET && abfd->my_archive != ((void*)0))
    file_position += abfd->origin;

  if (abfd->iovec)
    result = abfd->iovec->bseek (abfd, file_position, direction);
  else
    result = -1;

  if (result != 0)
    {
      int hold_errno = errno;


      bfd_tell (abfd);



      if (hold_errno == EINVAL)
 bfd_set_error (bfd_error_file_truncated);
      else
 {
   bfd_set_error (bfd_error_system_call);
   errno = hold_errno;
 }
    }
  else
    {

      if (direction == SEEK_SET)
 abfd->where = position;
      else
 abfd->where += position;
    }
  return result;
}
