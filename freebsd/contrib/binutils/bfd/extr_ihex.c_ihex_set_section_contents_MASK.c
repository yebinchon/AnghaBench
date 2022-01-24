#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ihex_data_struct {struct ihex_data_list* tail; struct ihex_data_list* head; } ;
struct ihex_data_list {scalar_t__ where; struct ihex_data_list* next; scalar_t__ size; int /*<<< orphan*/ * data; } ;
typedef  scalar_t__ file_ptr ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_7__ {struct ihex_data_struct* ihex_data; } ;
struct TYPE_8__ {TYPE_1__ tdata; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_9__ {int flags; scalar_t__ lma; } ;
typedef  TYPE_3__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SEC_ALLOC ; 
 int SEC_LOAD ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC0 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*,size_t) ; 

__attribute__((used)) static bfd_boolean
FUNC2 (bfd *abfd,
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

  n = FUNC0 (abfd, sizeof (* n));
  if (n == NULL)
    return FALSE;

  data = FUNC0 (abfd, count);
  if (data == NULL)
    return FALSE;
  FUNC1 (data, location, (size_t) count);

  n->data = data;
  n->where = section->lma + offset;
  n->size = count;

  /* Sort the records by address.  Optimize for the common case of
     adding a record to the end of the list.  */
  tdata = abfd->tdata.ihex_data;
  if (tdata->tail != NULL
      && n->where >= tdata->tail->where)
    {
      tdata->tail->next = n;
      n->next = NULL;
      tdata->tail = n;
    }
  else
    {
      struct ihex_data_list **pp;

      for (pp = &tdata->head;
	   *pp != NULL && (*pp)->where < n->where;
	   pp = &(*pp)->next)
	;
      n->next = *pp;
      *pp = n;
      if (n->next == NULL)
	tdata->tail = n;
    }

  return TRUE;
}