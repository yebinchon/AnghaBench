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
struct tree_balance {int /*<<< orphan*/  tb_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (struct tree_balance*,int) ; 
 int FUNC3 (struct tree_balance*,int) ; 

__attribute__((used)) static int FUNC4(struct tree_balance *tb, int h)
{
	FUNC1(!(FUNC0(tb->tb_path, h)),
	       "vs-8250: S is not initialized");

	if (h)
		return FUNC2(tb, h);
	else
		return FUNC3(tb, h);
}