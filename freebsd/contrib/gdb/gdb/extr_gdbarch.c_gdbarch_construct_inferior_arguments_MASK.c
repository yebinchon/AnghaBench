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
struct gdbarch {char* (* construct_inferior_arguments ) (struct gdbarch*,int,char**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 char* FUNC2 (struct gdbarch*,int,char**) ; 

char *
FUNC3 (struct gdbarch *gdbarch, int argc, char **argv)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->construct_inferior_arguments != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_construct_inferior_arguments called\n");
  return gdbarch->construct_inferior_arguments (gdbarch, argc, argv);
}