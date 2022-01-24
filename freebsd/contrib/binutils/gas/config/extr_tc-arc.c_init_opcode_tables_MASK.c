#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  valueT ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* arc_reg_names ; 
 int arc_reg_names_count ; 
 int /*<<< orphan*/ * arc_suffix_hash ; 
 TYPE_1__* arc_suffixes ; 
 int arc_suffixes_count ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  bfd_arch_arc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int cpu_tables_init_p ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,void*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  reg_section ; 
 int /*<<< orphan*/  stdoutput ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  target_big_endian ; 
 int /*<<< orphan*/  zero_address_frag ; 

__attribute__((used)) static void
FUNC11 (int mach)
{
  int i;
  char *last;

  if ((arc_suffix_hash = FUNC6 ()) == NULL)
    FUNC2 ("virtual memory exhausted");

  if (!FUNC4 (stdoutput, bfd_arch_arc, mach))
    FUNC3 ("could not set architecture and machine");

  /* This initializes a few things in arc-opc.c that we need.
     This must be called before the various arc_xxx_supported fns.  */
  FUNC1 (FUNC0 (mach, target_big_endian));

  /* Only put the first entry of each equivalently named suffix in the
     table.  */
  last = "";
  for (i = 0; i < arc_suffixes_count; i++)
    {
      if (FUNC7 (arc_suffixes[i].name, last) != 0)
	FUNC5 (arc_suffix_hash, arc_suffixes[i].name, (void *) (arc_suffixes + i));
      last = arc_suffixes[i].name;
    }

  /* Since registers don't have a prefix, we put them in the symbol table so
     they can't be used as symbols.  This also simplifies argument parsing as
     we can let gas parse registers for us.  The recorded register number is
     the address of the register's entry in arc_reg_names.

     If the register name is already in the table, then the existing
     definition is assumed to be from an .ExtCoreRegister pseudo-op.  */

  for (i = 0; i < arc_reg_names_count; i++)
    {
      if (FUNC9 (arc_reg_names[i].name))
	continue;
      /* Use symbol_create here instead of symbol_new so we don't try to
	 output registers into the object file's symbol table.  */
      FUNC10 (FUNC8 (arc_reg_names[i].name,
					  reg_section,
					  (valueT) &arc_reg_names[i],
					  &zero_address_frag));
    }

  /* Tell `.option' it's too late.  */
  cpu_tables_init_p = 1;
}