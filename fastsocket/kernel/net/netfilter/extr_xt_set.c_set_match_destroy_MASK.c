#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  index; } ;
struct xt_set_info_match {TYPE_1__ match_set; } ;
struct xt_mtdtor_param {struct xt_set_info_match* matchinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(const struct xt_mtdtor_param *par)
{
	struct xt_set_info_match *info = par->matchinfo;

	FUNC0(info->match_set.index);
}