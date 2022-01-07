
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bfd_in_memory {size_t size; size_t buffer; } ;
struct areltdata {size_t parsed_size; } ;
typedef size_t bfd_size_type ;
struct TYPE_6__ {int flags; size_t where; TYPE_1__* iovec; struct bfd_in_memory* iostream; int * arelt_data; } ;
typedef TYPE_2__ bfd ;
struct TYPE_5__ {size_t (* bread ) (TYPE_2__*,void*,size_t) ;} ;


 int BFD_IN_MEMORY ;
 int bfd_error_file_truncated ;
 int bfd_set_error (int ) ;
 int memcpy (void*,size_t,size_t) ;
 size_t stub1 (TYPE_2__*,void*,size_t) ;

bfd_size_type
bfd_bread (void *ptr, bfd_size_type size, bfd *abfd)
{
  size_t nread;



  if (abfd->arelt_data != ((void*)0))
    {
      size_t maxbytes = ((struct areltdata *) abfd->arelt_data)->parsed_size;
      if (size > maxbytes)
 size = maxbytes;
    }

  if ((abfd->flags & BFD_IN_MEMORY) != 0)
    {
      struct bfd_in_memory *bim;
      bfd_size_type get;

      bim = abfd->iostream;
      get = size;
      if (abfd->where + get > bim->size)
 {
   if (bim->size < (bfd_size_type) abfd->where)
     get = 0;
   else
     get = bim->size - abfd->where;
   bfd_set_error (bfd_error_file_truncated);
 }
      memcpy (ptr, bim->buffer + abfd->where, (size_t) get);
      abfd->where += get;
      return get;
    }

  if (abfd->iovec)
    nread = abfd->iovec->bread (abfd, ptr, size);
  else
    nread = 0;
  if (nread != (size_t) -1)
    abfd->where += nread;

  return nread;
}
