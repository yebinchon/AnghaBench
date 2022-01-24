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
struct regset {int dummy; } ;
struct gdbarch {struct regset const* (* regset_from_core_section ) (struct gdbarch*,char const*,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 struct regset const* FUNC2 (struct gdbarch*,char const*,size_t) ; 

const struct regset *
FUNC3 (struct gdbarch *gdbarch, const char *sect_name, size_t sect_size)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->regset_from_core_section != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_regset_from_core_section called\n");
  return gdbarch->regset_from_core_section (gdbarch, sect_name, sect_size);
}