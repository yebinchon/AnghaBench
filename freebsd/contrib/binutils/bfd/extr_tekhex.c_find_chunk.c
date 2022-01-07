
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct data_struct {scalar_t__ vma; struct data_struct* next; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
struct TYPE_7__ {TYPE_1__* tekhex_data; } ;
struct TYPE_8__ {TYPE_2__ tdata; } ;
typedef TYPE_3__ bfd ;
struct TYPE_6__ {struct data_struct* data; } ;


 scalar_t__ CHUNK_MASK ;
 struct data_struct* bfd_zalloc (TYPE_3__*,int ) ;

__attribute__((used)) static struct data_struct *
find_chunk (bfd *abfd, bfd_vma vma)
{
  struct data_struct *d = abfd->tdata.tekhex_data->data;

  vma &= ~CHUNK_MASK;
  while (d && (d->vma) != vma)
    d = d->next;

  if (!d)
    {

      d = bfd_zalloc (abfd, (bfd_size_type) sizeof (struct data_struct));

      if (!d)
 return ((void*)0);

      d->next = abfd->tdata.tekhex_data->data;
      d->vma = vma;
      abfd->tdata.tekhex_data->data = d;
    }
  return d;
}
