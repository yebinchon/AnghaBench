#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* sections; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_10__ {int flags; int size; struct TYPE_10__* next; } ;
typedef  TYPE_3__ asection ;
typedef  int /*<<< orphan*/  arelent ;
struct TYPE_8__ {scalar_t__ sh_link; scalar_t__ sh_type; int sh_entsize; } ;
struct TYPE_11__ {TYPE_1__ this_hdr; } ;

/* Variables and functions */
 int SEC_LOAD ; 
 scalar_t__ SHT_REL ; 
 scalar_t__ SHT_RELA ; 
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 TYPE_4__* FUNC2 (TYPE_3__*) ; 

long
FUNC3 (bfd *abfd)
{
  long ret;
  asection *s;

  if (FUNC1 (abfd) == 0)
    {
      FUNC0 (bfd_error_invalid_operation);
      return -1;
    }

  ret = sizeof (arelent *);
  for (s = abfd->sections; s != NULL; s = s->next)
    if ((s->flags & SEC_LOAD) != 0
	&& FUNC2 (s)->this_hdr.sh_link == FUNC1 (abfd)
	&& (FUNC2 (s)->this_hdr.sh_type == SHT_REL
	    || FUNC2 (s)->this_hdr.sh_type == SHT_RELA))
      ret += ((s->size / FUNC2 (s)->this_hdr.sh_entsize)
	      * sizeof (arelent *));

  return ret;
}