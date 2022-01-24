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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sparc_addr_diff_list ; 
 int /*<<< orphan*/  sparc_addr_list ; 

void
FUNC1 (rtx lab, rtx vec, int diff)
{
  vec = FUNC0 (VOIDmode, lab, vec);
  if (diff)
    sparc_addr_diff_list
      = FUNC0 (VOIDmode, vec, sparc_addr_diff_list);
  else
    sparc_addr_list = FUNC0 (VOIDmode, vec, sparc_addr_list);
}