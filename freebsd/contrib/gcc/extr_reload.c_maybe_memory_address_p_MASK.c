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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (enum machine_mode mode, rtx ad, rtx *part)
{
  int retv;
  rtx tem = *part;
  rtx reg = FUNC1 (FUNC0 (tem), FUNC2 ());

  *part = reg;
  retv = FUNC3 (mode, ad);
  *part = tem;

  return retv;
}