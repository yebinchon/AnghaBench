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
struct target_param {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct target_param*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct target_param*) ; 
 int /*<<< orphan*/  target_param ; 
 int /*<<< orphan*/  target_paramlist ; 
 int /*<<< orphan*/  tp ; 

int
FUNC2(struct target_param *param)
{
	FUNC0(&target_paramlist, param, target_param, tp);
	FUNC1(param);

	return (0);
}