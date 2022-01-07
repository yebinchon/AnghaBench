
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ihex_data_struct {struct ihex_data_list* tail; struct ihex_data_list* head; } ;
struct ihex_data_list {scalar_t__ where; struct ihex_data_list* next; scalar_t__ size; int * data; } ;
typedef scalar_t__ file_ptr ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_7__ {struct ihex_data_struct* ihex_data; } ;
struct TYPE_8__ {TYPE_1__ tdata; } ;
typedef TYPE_2__ bfd ;
struct TYPE_9__ {int flags; scalar_t__ lma; } ;
typedef TYPE_3__ asection ;


 int FALSE ;
 int SEC_ALLOC ;
 int SEC_LOAD ;
 int TRUE ;
 void* bfd_alloc (TYPE_2__*,scalar_t__) ;
 int memcpy (int *,void const*,size_t) ;

__attribute__((used)) static bfd_boolean
ihex_set_section_contents (bfd *abfd,
      asection *section,
      const void * location,
      file_ptr offset,
      bfd_size_type count)
{
  struct ihex_data_list *n;
  bfd_byte *data;
  struct ihex_data_struct *tdata;

  if (count == 0
      || (section->flags & SEC_ALLOC) == 0
      || (section->flags & SEC_LOAD) == 0)
    return TRUE;

  n = bfd_alloc (abfd, sizeof (* n));
  if (n == ((void*)0))
    return FALSE;

  data = bfd_alloc (abfd, count);
  if (data == ((void*)0))
    return FALSE;
  memcpy (data, location, (size_t) count);

  n->data = data;
  n->where = section->lma + offset;
  n->size = count;



  tdata = abfd->tdata.ihex_data;
  if (tdata->tail != ((void*)0)
      && n->where >= tdata->tail->where)
    {
      tdata->tail->next = n;
      n->next = ((void*)0);
      tdata->tail = n;
    }
  else
    {
      struct ihex_data_list **pp;

      for (pp = &tdata->head;
    *pp != ((void*)0) && (*pp)->where < n->where;
    pp = &(*pp)->next)
 ;
      n->next = *pp;
      *pp = n;
      if (n->next == ((void*)0))
 tdata->tail = n;
    }

  return TRUE;
}
