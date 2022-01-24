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
struct set_of_data {int /*<<< orphan*/  found; int /*<<< orphan*/  pat; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct set_of_data*) ; 
 int /*<<< orphan*/  set_of_1 ; 

rtx
FUNC3 (rtx pat, rtx insn)
{
  struct set_of_data data;
  data.found = NULL_RTX;
  data.pat = pat;
  FUNC2 (FUNC0 (insn) ? FUNC1 (insn) : insn, set_of_1, &data);
  return data.found;
}