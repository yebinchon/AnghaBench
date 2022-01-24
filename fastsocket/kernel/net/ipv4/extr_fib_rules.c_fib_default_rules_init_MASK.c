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
struct fib_rules_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIB_RULE_PERMANENT ; 
 int /*<<< orphan*/  RT_TABLE_DEFAULT ; 
 int /*<<< orphan*/  RT_TABLE_LOCAL ; 
 int /*<<< orphan*/  RT_TABLE_MAIN ; 
 int FUNC0 (struct fib_rules_ops*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct fib_rules_ops *ops)
{
	int err;

	err = FUNC0(ops, 0, RT_TABLE_LOCAL, FIB_RULE_PERMANENT);
	if (err < 0)
		return err;
	err = FUNC0(ops, 0x7FFE, RT_TABLE_MAIN, 0);
	if (err < 0)
		return err;
	err = FUNC0(ops, 0x7FFF, RT_TABLE_DEFAULT, 0);
	if (err < 0)
		return err;
	return 0;
}