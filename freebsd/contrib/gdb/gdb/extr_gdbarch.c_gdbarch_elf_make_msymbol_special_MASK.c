#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct minimal_symbol {int dummy; } ;
struct gdbarch {int /*<<< orphan*/  (* elf_make_msymbol_special ) (int /*<<< orphan*/ *,struct minimal_symbol*) ;} ;
typedef  int /*<<< orphan*/  asymbol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct minimal_symbol*) ; 

void
FUNC3 (struct gdbarch *gdbarch, asymbol *sym, struct minimal_symbol *msym)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->elf_make_msymbol_special != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_elf_make_msymbol_special called\n");
  gdbarch->elf_make_msymbol_special (sym, msym);
}