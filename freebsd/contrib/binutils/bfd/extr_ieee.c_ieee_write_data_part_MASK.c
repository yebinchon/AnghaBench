#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  data_part; } ;
struct TYPE_15__ {TYPE_1__ r; } ;
struct TYPE_16__ {TYPE_2__ w; } ;
typedef  TYPE_3__ ieee_data_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_17__ {TYPE_5__* sections; } ;
typedef  TYPE_4__ bfd ;
struct TYPE_18__ {int flags; scalar_t__ reloc_count; struct TYPE_18__* next; } ;
typedef  TYPE_5__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_3__* FUNC0 (TYPE_4__*) ; 
 int SEC_LOAD ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_5__*) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd *abfd)
{
  asection *s;

  ieee_data_type *ieee = FUNC0 (abfd);
  ieee->w.r.data_part = FUNC1 (abfd);

  for (s = abfd->sections; s != (asection *) NULL; s = s->next)
    {
      /* Skip sections that have no loadable contents (.bss,
         debugging, etc.)  */
      if ((s->flags & SEC_LOAD) == 0)
	continue;

      /* Sort the reloc records so we can insert them in the correct
	 places.  */
      if (s->reloc_count != 0)
	{
	  if (! FUNC2 (abfd, s))
	    return FALSE;
	}
      else
	{
	  if (! FUNC3 (abfd, s))
	    return FALSE;
	}
    }

  return TRUE;
}