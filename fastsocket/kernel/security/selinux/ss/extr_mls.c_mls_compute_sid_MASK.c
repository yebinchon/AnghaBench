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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct range_trans {int /*<<< orphan*/  target_class; int /*<<< orphan*/  target_type; int /*<<< orphan*/  source_type; } ;
struct mls_range {int dummy; } ;
struct context {int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  process_class; int /*<<< orphan*/  range_tr; } ;

/* Variables and functions */
#define  AVTAB_CHANGE 130 
#define  AVTAB_MEMBER 129 
#define  AVTAB_TRANSITION 128 
 int EINVAL ; 
 struct mls_range* FUNC0 (int /*<<< orphan*/ ,struct range_trans*) ; 
 int FUNC1 (struct context*,struct context*) ; 
 int FUNC2 (struct context*,struct context*) ; 
 int FUNC3 (struct context*,struct mls_range*) ; 
 TYPE_1__ policydb ; 
 int /*<<< orphan*/  selinux_mls_enabled ; 

int FUNC4(struct context *scontext,
		    struct context *tcontext,
		    u16 tclass,
		    u32 specified,
		    struct context *newcontext)
{
	struct range_trans rtr;
	struct mls_range *r;

	if (!selinux_mls_enabled)
		return 0;

	switch (specified) {
	case AVTAB_TRANSITION:
		/* Look for a range transition rule. */
		rtr.source_type = scontext->type;
		rtr.target_type = tcontext->type;
		rtr.target_class = tclass;
		r = FUNC0(policydb.range_tr, &rtr);
		if (r)
			return FUNC3(newcontext, r);
		/* Fallthrough */
	case AVTAB_CHANGE:
		if (tclass == policydb.process_class)
			/* Use the process MLS attributes. */
			return FUNC1(newcontext, scontext);
		else
			/* Use the process effective MLS attributes. */
			return FUNC2(newcontext, scontext);
	case AVTAB_MEMBER:
		/* Use the process effective MLS attributes. */
		return FUNC2(newcontext, scontext);

	/* fall through */
	}
	return -EINVAL;
}