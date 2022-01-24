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
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  name; int /*<<< orphan*/  section; } ;
typedef  TYPE_1__ asymbol ;

/* Variables and functions */
 int BSF_GLOBAL ; 
 int BSF_WEAK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static long
FUNC8 (bfd *abfd, void *minisyms, long symcount, unsigned int size)
{
  bfd_byte *from, *fromend, *to;
  asymbol *store;

  store = FUNC4 (abfd);
  if (store == NULL)
    FUNC0 (FUNC1 (abfd));

  from = (bfd_byte *) minisyms;
  fromend = from + symcount * size;
  to = (bfd_byte *) minisyms;

  for (; from < fromend; from += size)
    {
      int keep = 0;
      asymbol *sym;

      sym = FUNC5 (abfd, FALSE, (const void *) from, store);
      if (sym == NULL)
	FUNC0 (FUNC1 (abfd));

      /* Check for external and defined only symbols.  */
      keep = (((sym->flags & BSF_GLOBAL) != 0
	       || (sym->flags & BSF_WEAK) != 0
	       || FUNC2 (sym->section))
	      && ! FUNC3 (sym->section));

      keep = keep && ! FUNC6 (sym->name);

      if (keep)
	{
	  FUNC7 (to, from, size);
	  to += size;
	}
    }

  return (to - (bfd_byte *) minisyms) / size;
}