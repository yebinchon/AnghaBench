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
struct change {int dummy; } ;
typedef  scalar_t__ lin ;
typedef  enum changes { ____Placeholder_changes } changes ;

/* Variables and functions */
 size_t UNCHANGED ; 
 int FUNC0 (struct change*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * group_format ; 
 scalar_t__ next_line0 ; 
 scalar_t__ next_line1 ; 

__attribute__((used)) static void
FUNC3 (struct change *hunk)
{
  lin first0, last0, first1, last1;

  /* Determine range of line numbers involved in each file.  */
  enum changes changes = FUNC0 (hunk, &first0, &last0, &first1, &last1);
  if (!changes)
    return;

  FUNC1 ();

  /* Print lines up to this change.  */
  if (next_line0 < first0 || next_line1 < first1)
    FUNC2 (group_format[UNCHANGED],
		  next_line0, first0,
		  next_line1, first1);

  /* Print this change.  */
  next_line0 = last0 + 1;
  next_line1 = last1 + 1;
  FUNC2 (group_format[changes],
		first0, next_line0,
		first1, next_line1);
}