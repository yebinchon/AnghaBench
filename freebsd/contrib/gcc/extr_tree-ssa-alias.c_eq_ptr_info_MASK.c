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
struct ptr_info_def {int /*<<< orphan*/  pt_vars; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1 (const void *p1, const void *p2)
{
  const struct ptr_info_def *n1 = (const struct ptr_info_def *) p1;
  const struct ptr_info_def *n2 = (const struct ptr_info_def *) p2;
  return FUNC0 (n1->pt_vars, n2->pt_vars);
}