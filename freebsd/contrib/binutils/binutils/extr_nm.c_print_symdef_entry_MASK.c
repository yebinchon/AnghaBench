#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ symindex ;
struct TYPE_3__ {char* name; } ;
typedef  TYPE_1__ carsym ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 scalar_t__ BFD_NO_MORE_SYMBOLS ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void
FUNC7 (bfd *abfd)
{
  symindex idx = BFD_NO_MORE_SYMBOLS;
  carsym *thesym;
  bfd_boolean everprinted = FALSE;

  for (idx = FUNC4 (abfd, idx, &thesym);
       idx != BFD_NO_MORE_SYMBOLS;
       idx = FUNC4 (abfd, idx, &thesym))
    {
      bfd *elt;
      if (!everprinted)
	{
	  FUNC6 (FUNC0("\nArchive index:\n"));
	  everprinted = TRUE;
	}
      elt = FUNC2 (abfd, idx);
      if (elt == NULL)
	FUNC1 ("bfd_get_elt_at_index");
      if (thesym->name != (char *) NULL)
	{
	  FUNC5 ("%s", thesym->name, abfd);
	  FUNC6 (" in %s\n", FUNC3 (elt));
	}
    }
}