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
struct tcf_gact {int /*<<< orphan*/  common; } ;
struct tc_action {struct tcf_gact* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  gact_hash_info ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct tc_action *a, int bind)
{
	struct tcf_gact *gact = a->priv;

	if (gact)
		return FUNC0(&gact->common, bind, &gact_hash_info);
	return 0;
}