#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  section; } ;
typedef  TYPE_1__ asymbol ;

/* Variables and functions */
 int BSF_DEBUGGING ; 
 int BSF_GLOBAL ; 
 int BSF_WEAK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  allow_special_symbols ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const*,TYPE_1__*) ; 
 scalar_t__ defined_only ; 
 scalar_t__ external_only ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  print_debug_syms ; 
 scalar_t__ sort_by_size ; 
 scalar_t__ undefined_only ; 

__attribute__((used)) static long
FUNC10 (bfd *abfd, bfd_boolean dynamic, void *minisyms,
		long symcount, unsigned int size)
{
  bfd_byte *from, *fromend, *to;
  asymbol *store;

  store = FUNC7 (abfd);
  if (store == NULL)
    FUNC1 (FUNC2 (abfd));

  from = (bfd_byte *) minisyms;
  fromend = from + symcount * size;
  to = (bfd_byte *) minisyms;

  for (; from < fromend; from += size)
    {
      int keep = 0;
      asymbol *sym;

      FUNC0 (1);

      sym = FUNC8 (abfd, dynamic, (const void *) from, store);
      if (sym == NULL)
	FUNC1 (FUNC2 (abfd));

      if (undefined_only)
	keep = FUNC6 (sym->section);
      else if (external_only)
	keep = ((sym->flags & BSF_GLOBAL) != 0
		|| (sym->flags & BSF_WEAK) != 0
		|| FUNC6 (sym->section)
		|| FUNC4 (sym->section));
      else
	keep = 1;

      if (keep
	  && ! print_debug_syms
	  && (sym->flags & BSF_DEBUGGING) != 0)
	keep = 0;

      if (keep
	  && sort_by_size
	  && (FUNC3 (sym->section)
	      || FUNC6 (sym->section)))
	keep = 0;

      if (keep
	  && defined_only)
	{
	  if (FUNC6 (sym->section))
	    keep = 0;
	}

      if (keep
	  && FUNC5 (abfd, sym)
	  && ! allow_special_symbols)
	keep = 0;

      if (keep)
	{
	  FUNC9 (to, from, size);
	  to += size;
	}
    }

  return (to - (bfd_byte *) minisyms) / size;
}