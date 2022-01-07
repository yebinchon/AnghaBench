
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long bfd_size_type ;
struct TYPE_3__ {int memory; } ;
typedef TYPE_1__ bfd ;


 unsigned long HALF_BFD_SIZE_TYPE ;
 int bfd_error_no_memory ;
 int bfd_set_error (int ) ;
 void* objalloc_alloc (int ,unsigned long) ;

void *
bfd_alloc2 (bfd *abfd, bfd_size_type nmemb, bfd_size_type size)
{
  void *ret;

  if ((nmemb | size) >= HALF_BFD_SIZE_TYPE
      && size != 0
      && nmemb > ~(bfd_size_type) 0 / size)
    {
      bfd_set_error (bfd_error_no_memory);
      return ((void*)0);
    }

  size *= nmemb;

  if (size != (unsigned long) size)
    {
      bfd_set_error (bfd_error_no_memory);
      return ((void*)0);
    }

  ret = objalloc_alloc (abfd->memory, (unsigned long) size);
  if (ret == ((void*)0))
    bfd_set_error (bfd_error_no_memory);
  return ret;
}
