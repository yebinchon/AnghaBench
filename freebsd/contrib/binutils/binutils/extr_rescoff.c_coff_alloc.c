
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bindata_build {int length; TYPE_1__* last; TYPE_1__* d; } ;
typedef int rc_uint_type ;
struct TYPE_2__ {int length; int * data; struct TYPE_2__* next; } ;
typedef TYPE_1__ bindata ;
typedef int bfd_byte ;


 scalar_t__ reswr_alloc (int) ;

__attribute__((used)) static bfd_byte *
coff_alloc (struct bindata_build *bb, rc_uint_type size)
{
  bindata *d;

  d = (bindata *) reswr_alloc (sizeof (bindata));

  d->next = ((void*)0);
  d->data = (bfd_byte *) reswr_alloc (size);
  d->length = size;

  if (bb->d == ((void*)0))
    bb->d = d;
  else
    bb->last->next = d;
  bb->last = d;
  bb->length += size;

  return d->data;
}
