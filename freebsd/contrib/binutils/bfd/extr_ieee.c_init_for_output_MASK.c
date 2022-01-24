#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_7__ {TYPE_2__* sections; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_8__ {int flags; scalar_t__ size; struct TYPE_8__* next; } ;
typedef  TYPE_2__ asection ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SEC_DEBUGGING ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 TYPE_4__* FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static bfd_boolean
FUNC2 (bfd *abfd)
{
  asection *s;

  for (s = abfd->sections; s != (asection *) NULL; s = s->next)
    {
      if ((s->flags & SEC_DEBUGGING) != 0)
	continue;
      if (s->size != 0)
	{
	  bfd_size_type size = s->size;
	  FUNC1 (s)->data = FUNC0 (abfd, size);
	  if (!FUNC1 (s)->data)
	    return FALSE;
	}
    }
  return TRUE;
}