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
struct ptr_loc {char const* filename; int lineno; void const* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT ; 
 struct ptr_loc** FUNC0 (int /*<<< orphan*/ ,struct ptr_loc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ptr_loc_obstack ; 
 int /*<<< orphan*/  ptr_locs ; 

__attribute__((used)) static void
FUNC2 (const void *ptr, const char *filename, int lineno)
{
  struct ptr_loc *loc;

  loc = (struct ptr_loc *) FUNC1 (&ptr_loc_obstack,
					  sizeof (struct ptr_loc));
  loc->ptr = ptr;
  loc->filename = filename;
  loc->lineno = lineno;
  *FUNC0 (ptr_locs, loc, INSERT) = loc;
}