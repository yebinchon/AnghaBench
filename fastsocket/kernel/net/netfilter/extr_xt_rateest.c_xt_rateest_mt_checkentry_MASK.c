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
struct xt_rateest_match_info {int flags; int mode; struct xt_rateest* est2; struct xt_rateest* est1; int /*<<< orphan*/  name2; int /*<<< orphan*/  name1; } ;
struct xt_rateest {int dummy; } ;
struct xt_mtchk_param {struct xt_rateest_match_info* matchinfo; } ;

/* Variables and functions */
 int XT_RATEEST_MATCH_ABS ; 
 int XT_RATEEST_MATCH_BPS ; 
#define  XT_RATEEST_MATCH_EQ 130 
#define  XT_RATEEST_MATCH_GT 129 
#define  XT_RATEEST_MATCH_LT 128 
 int XT_RATEEST_MATCH_PPS ; 
 int XT_RATEEST_MATCH_REL ; 
 int FUNC0 (int) ; 
 struct xt_rateest* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xt_rateest*) ; 

__attribute__((used)) static bool FUNC3(const struct xt_mtchk_param *par)
{
	struct xt_rateest_match_info *info = par->matchinfo;
	struct xt_rateest *est1, *est2;

	if (FUNC0(info->flags & (XT_RATEEST_MATCH_ABS |
				     XT_RATEEST_MATCH_REL)) != 1)
		goto err1;

	if (!(info->flags & (XT_RATEEST_MATCH_BPS | XT_RATEEST_MATCH_PPS)))
		goto err1;

	switch (info->mode) {
	case XT_RATEEST_MATCH_EQ:
	case XT_RATEEST_MATCH_LT:
	case XT_RATEEST_MATCH_GT:
		break;
	default:
		goto err1;
	}

	est1 = FUNC1(info->name1);
	if (!est1)
		goto err1;

	if (info->flags & XT_RATEEST_MATCH_REL) {
		est2 = FUNC1(info->name2);
		if (!est2)
			goto err2;
	} else
		est2 = NULL;


	info->est1 = est1;
	info->est2 = est2;
	return true;

err2:
	FUNC2(est1);
err1:
	return false;
}