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
struct ptr_loc {int /*<<< orphan*/  lineno; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 struct ptr_loc* FUNC0 (void const*) ; 
 int /*<<< orphan*/  FUNC1 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2 (const void *new_ptr, const void *old_ptr)
{
  const struct ptr_loc *loc = FUNC0 (old_ptr);
  if (loc != 0)
    FUNC1 (new_ptr, loc->filename, loc->lineno);
}