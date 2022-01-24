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
struct gdbarch {char const* (* address_class_type_flags_to_name ) (struct gdbarch*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 char const* FUNC2 (struct gdbarch*,int) ; 

const char *
FUNC3 (struct gdbarch *gdbarch, int type_flags)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->address_class_type_flags_to_name != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_address_class_type_flags_to_name called\n");
  return gdbarch->address_class_type_flags_to_name (gdbarch, type_flags);
}