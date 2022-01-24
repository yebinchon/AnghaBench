#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_3__* head; } ;
typedef  TYPE_2__ tdata_type ;
struct TYPE_15__ {struct TYPE_15__* next; } ;
typedef  TYPE_3__ srec_data_list_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_13__ {TYPE_2__* srec_data; } ;
struct TYPE_16__ {TYPE_1__ tdata; } ;
typedef  TYPE_4__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_2__*) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd *abfd, int symbols)
{
  tdata_type *tdata = abfd->tdata.srec_data;
  srec_data_list_type *list;

  if (symbols)
    {
      if (! FUNC2 (abfd))
	return FALSE;
    }

  if (! FUNC0 (abfd))
    return FALSE;

  /* Now wander though all the sections provided and output them.  */
  list = tdata->head;

  while (list != (srec_data_list_type *) NULL)
    {
      if (! FUNC1 (abfd, tdata, list))
	return FALSE;
      list = list->next;
    }
  return FUNC3 (abfd, tdata);
}