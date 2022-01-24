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
struct gdbarch {int (* print_insn ) (int /*<<< orphan*/ ,struct disassemble_info*) ;} ;
struct disassemble_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_vma ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int FUNC2 (int /*<<< orphan*/ ,struct disassemble_info*) ; 

int
FUNC3 (struct gdbarch *gdbarch, bfd_vma vma, struct disassemble_info *info)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->print_insn != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_print_insn called\n");
  return gdbarch->print_insn (vma, info);
}