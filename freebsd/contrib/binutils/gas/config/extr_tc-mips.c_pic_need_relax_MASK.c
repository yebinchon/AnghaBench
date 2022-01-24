#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
typedef  int bfd_boolean ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_2__ {int /*<<< orphan*/ * X_add_symbol; } ;

/* Variables and functions */
 int /*<<< orphan*/  IS_ELF ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int /*<<< orphan*/  bfd_abs_section ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_und_section ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC8 (symbolS *sym, asection *segtype)
{
  asection *symsec;

  /* Handle the case of a symbol equated to another symbol.  */
  while (FUNC5 (sym))
    {
      symbolS *n;

      /* It's possible to get a loop here in a badly written program.  */
      n = FUNC6 (sym)->X_add_symbol;
      if (n == sym)
	break;
      sym = n;
    }

  if (FUNC7 (sym))
    return TRUE;

  symsec = FUNC0 (sym);

  /* This must duplicate the test in adjust_reloc_syms.  */
  return (symsec != &bfd_und_section
	  && symsec != &bfd_abs_section
	  && !FUNC3 (symsec)
	  && !FUNC4 (sym, segtype)
#ifdef OBJ_ELF
	  /* A global or weak symbol is treated as external.  */
	  && (!IS_ELF || (! S_IS_WEAK (sym) && ! S_IS_EXTERNAL (sym)))
#endif
	  );
}