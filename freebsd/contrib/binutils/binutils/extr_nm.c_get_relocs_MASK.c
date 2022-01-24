#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct get_relocs_info {scalar_t__* relcount; int /*<<< orphan*/ ** relocs; TYPE_1__** secs; int /*<<< orphan*/  syms; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {int flags; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int SEC_RELOC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 long FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (long) ; 

__attribute__((used)) static void
FUNC5 (bfd *abfd, asection *sec, void *dataarg)
{
  struct get_relocs_info *data = (struct get_relocs_info *) dataarg;

  *data->secs = sec;

  if ((sec->flags & SEC_RELOC) == 0)
    {
      *data->relocs = NULL;
      *data->relcount = 0;
    }
  else
    {
      long relsize;

      relsize = FUNC3 (abfd, sec);
      if (relsize < 0)
	FUNC1 (FUNC2 (abfd));

      *data->relocs = FUNC4 (relsize);
      *data->relcount = FUNC0 (abfd, sec, *data->relocs,
						data->syms);
      if (*data->relcount < 0)
	FUNC1 (FUNC2 (abfd));
    }

  ++data->secs;
  ++data->relocs;
  ++data->relcount;
}