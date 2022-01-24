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
struct xt_target_param {struct xt_connsecmark_target_info* targinfo; } ;
struct xt_connsecmark_target_info {int mode; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CONNSECMARK_RESTORE 129 
#define  CONNSECMARK_SAVE 128 
 unsigned int XT_CONTINUE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static unsigned int
FUNC3(struct sk_buff *skb, const struct xt_target_param *par)
{
	const struct xt_connsecmark_target_info *info = par->targinfo;

	switch (info->mode) {
	case CONNSECMARK_SAVE:
		FUNC2(skb);
		break;

	case CONNSECMARK_RESTORE:
		FUNC1(skb);
		break;

	default:
		FUNC0();
	}

	return XT_CONTINUE;
}