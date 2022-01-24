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
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * current_gdbarch ; 
 int /*<<< orphan*/  FUNC0 (struct gdbarch*) ; 
 struct gdbarch* FUNC1 () ; 
 struct gdbarch* FUNC2 (struct gdbarch*,struct gdbarch_info) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

struct gdbarch *
FUNC4 (struct gdbarch_info info)
{
  /* Save the previously selected architecture, setting the global to
     NULL.  This stops things like gdbarch->init() trying to use the
     previous architecture's configuration.  The previous architecture
     may not even be of the same architecture family.  The most recent
     architecture of the same family is found at the head of the
     rego->arches list.  */
  struct gdbarch *old_gdbarch = FUNC1 ();

  /* Find the specified architecture.  */
  struct gdbarch *new_gdbarch = FUNC2 (old_gdbarch, info);

  /* Restore the existing architecture.  */
  FUNC3 (current_gdbarch == NULL);
  FUNC0 (old_gdbarch);

  return new_gdbarch;
}