#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_3__* sections; } ;
typedef  TYPE_2__ bfd ;
typedef  int /*<<< orphan*/  asymbol ;
struct TYPE_13__ {int /*<<< orphan*/ * relocation; struct TYPE_13__* next; } ;
typedef  TYPE_3__ asection ;
typedef  int /*<<< orphan*/  arelent ;
struct TYPE_11__ {scalar_t__ sh_link; scalar_t__ sh_type; } ;
struct TYPE_14__ {TYPE_1__ this_hdr; } ;

/* Variables and functions */
 scalar_t__ SHT_RELA ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 long FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 TYPE_4__* FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static long
FUNC5 (bfd *abfd, arelent **storage,
					asymbol **syms)
{
  asection *s;
  long ret;

  if (FUNC3 (abfd) == 0)
    {
      FUNC0 (bfd_error_invalid_operation);
      return -1;
    }

  ret = 0;
  for (s = abfd->sections; s != NULL; s = s->next)
    {
      if (FUNC4 (s)->this_hdr.sh_link == FUNC3 (abfd)
	  && (FUNC4 (s)->this_hdr.sh_type == SHT_RELA))
	{
	  arelent *p;
	  long count, i;

	  if (! FUNC2 (abfd, s, syms, TRUE))
	    return -1;
	  count = FUNC1 (s);
	  p = s->relocation;
	  for (i = 0; i < count; i++)
	    *storage++ = p++;
	  ret += count;
	}
    }

  *storage = NULL;

  return ret;
}