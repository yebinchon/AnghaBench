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
struct xt_tgdtor_param {struct xt_rateest_target_info* targinfo; } ;
struct xt_rateest_target_info {int /*<<< orphan*/  est; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(const struct xt_tgdtor_param *par)
{
	struct xt_rateest_target_info *info = par->targinfo;

	FUNC0(info->est);
}