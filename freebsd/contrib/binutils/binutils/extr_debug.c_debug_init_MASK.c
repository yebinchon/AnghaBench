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
struct debug_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct debug_handle*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 

void *
FUNC2 (void)
{
  struct debug_handle *ret;

  ret = (struct debug_handle *) FUNC1 (sizeof *ret);
  FUNC0 (ret, 0, sizeof *ret);
  return (void *) ret;
}