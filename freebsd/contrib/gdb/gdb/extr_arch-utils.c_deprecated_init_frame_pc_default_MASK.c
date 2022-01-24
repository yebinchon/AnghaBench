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
struct frame_info {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

CORE_ADDR
FUNC5 (int fromleaf, struct frame_info *prev)
{
  if (fromleaf && FUNC2 ())
    return FUNC1 (FUNC3 (prev));
  else if (FUNC3 (prev) != NULL)
    return FUNC0 (FUNC3 (prev));
  else
    return FUNC4 ();
}