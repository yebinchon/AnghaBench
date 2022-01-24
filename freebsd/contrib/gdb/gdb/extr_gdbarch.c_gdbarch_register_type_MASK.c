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
struct type {int dummy; } ;
struct gdbarch {struct type* (* register_type ) (struct gdbarch*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 struct type* FUNC2 (struct gdbarch*,int) ; 

struct type *
FUNC3 (struct gdbarch *gdbarch, int reg_nr)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->register_type != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_register_type called\n");
  return gdbarch->register_type (gdbarch, reg_nr);
}