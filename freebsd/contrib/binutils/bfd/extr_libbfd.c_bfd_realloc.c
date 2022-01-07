
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t bfd_size_type ;


 int bfd_error_no_memory ;
 int bfd_set_error (int ) ;
 void* malloc (size_t) ;
 void* realloc (void*,size_t) ;

void *
bfd_realloc (void *ptr, bfd_size_type size)
{
  void *ret;

  if (size != (size_t) size)
    {
      bfd_set_error (bfd_error_no_memory);
      return ((void*)0);
    }

  if (ptr == ((void*)0))
    ret = malloc ((size_t) size);
  else
    ret = realloc (ptr, (size_t) size);

  if (ret == ((void*)0) && (size_t) size != 0)
    bfd_set_error (bfd_error_no_memory);

  return ret;
}
