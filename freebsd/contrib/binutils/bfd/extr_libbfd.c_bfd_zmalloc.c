
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t bfd_size_type ;


 int bfd_error_no_memory ;
 int bfd_set_error (int ) ;
 void* malloc (size_t) ;
 int memset (void*,int ,size_t) ;

void *
bfd_zmalloc (bfd_size_type size)
{
  void *ptr;

  if (size != (size_t) size)
    {
      bfd_set_error (bfd_error_no_memory);
      return ((void*)0);
    }

  ptr = malloc ((size_t) size);

  if ((size_t) size != 0)
    {
      if (ptr == ((void*)0))
 bfd_set_error (bfd_error_no_memory);
      else
 memset (ptr, 0, (size_t) size);
    }

  return ptr;
}
