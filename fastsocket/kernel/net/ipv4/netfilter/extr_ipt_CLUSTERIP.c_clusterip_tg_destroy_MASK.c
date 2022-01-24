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
struct xt_tgdtor_param {TYPE_1__* target; struct ipt_clusterip_tgt_info* targinfo; } ;
struct ipt_clusterip_tgt_info {int /*<<< orphan*/  config; } ;
struct TYPE_2__ {int /*<<< orphan*/  family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const struct xt_tgdtor_param *par)
{
	const struct ipt_clusterip_tgt_info *cipinfo = par->targinfo;

	/* if no more entries are referencing the config, remove it
	 * from the list and destroy the proc entry */
	FUNC0(cipinfo->config);

	FUNC1(cipinfo->config);

	FUNC2(par->target->family);
}