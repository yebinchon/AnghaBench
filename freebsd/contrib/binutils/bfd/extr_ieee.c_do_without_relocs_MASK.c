#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_7__ {int flags; unsigned int size; } ;
typedef  TYPE_1__ asection ;
struct TYPE_8__ {scalar_t__* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SEC_LOAD ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (bfd *abfd, asection *s)
{
  bfd_byte *stream = FUNC2 (s)->data;

  if (stream == 0 || ((s->flags & SEC_LOAD) == 0))
    {
      if (! FUNC0 (abfd, s))
	return FALSE;
    }
  else
    {
      unsigned int i;

      for (i = 0; i < s->size; i++)
	{
	  if (stream[i] != 0)
	    {
	      if (! FUNC1 (abfd, s))
		return FALSE;
	      return TRUE;
	    }
	}
      if (! FUNC0 (abfd, s))
	return FALSE;
    }

  return TRUE;
}