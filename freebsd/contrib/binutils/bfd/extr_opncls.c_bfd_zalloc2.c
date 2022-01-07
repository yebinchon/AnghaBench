
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_size_type ;
typedef int bfd ;


 scalar_t__ HALF_BFD_SIZE_TYPE ;
 void* bfd_alloc (int *,scalar_t__) ;
 int bfd_error_no_memory ;
 int bfd_set_error (int ) ;
 int memset (void*,int ,size_t) ;

void *
bfd_zalloc2 (bfd *abfd, bfd_size_type nmemb, bfd_size_type size)
{
  void *res;

  if ((nmemb | size) >= HALF_BFD_SIZE_TYPE
      && size != 0
      && nmemb > ~(bfd_size_type) 0 / size)
    {
      bfd_set_error (bfd_error_no_memory);
      return ((void*)0);
    }

  size *= nmemb;

  res = bfd_alloc (abfd, size);
  if (res)
    memset (res, 0, (size_t) size);
  return res;
}
