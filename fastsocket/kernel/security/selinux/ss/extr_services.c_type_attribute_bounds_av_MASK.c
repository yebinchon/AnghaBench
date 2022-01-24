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
struct type_datum {int bounds; } ;
struct context {int type; } ;
struct av_decision {int allowed; } ;
typedef  int /*<<< orphan*/  lo_tcontext ;
typedef  int /*<<< orphan*/  lo_scontext ;
typedef  int /*<<< orphan*/  lo_avd ;
struct TYPE_2__ {struct type_datum** type_val_to_struct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct context*,struct context*,int /*<<< orphan*/ ,struct av_decision*) ; 
 int /*<<< orphan*/  FUNC1 (struct context*,struct context*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct av_decision*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ policydb ; 
 int /*<<< orphan*/  FUNC3 (struct context*,struct context*,int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static void FUNC4(struct context *scontext,
				     struct context *tcontext,
				     u16 tclass,
				     struct av_decision *avd)
{
	struct context lo_scontext;
	struct context lo_tcontext;
	struct av_decision lo_avd;
	struct type_datum *source
		= policydb.type_val_to_struct[scontext->type - 1];
	struct type_datum *target
		= policydb.type_val_to_struct[tcontext->type - 1];
	u32 masked = 0;

	if (source->bounds) {
		FUNC2(&lo_avd, 0, sizeof(lo_avd));

		FUNC1(&lo_scontext, scontext, sizeof(lo_scontext));
		lo_scontext.type = source->bounds;

		FUNC0(&lo_scontext,
					  tcontext,
					  tclass,
					  &lo_avd);
		if ((lo_avd.allowed & avd->allowed) == avd->allowed)
			return;		/* no masked permission */
		masked = ~lo_avd.allowed & avd->allowed;
	}

	if (target->bounds) {
		FUNC2(&lo_avd, 0, sizeof(lo_avd));

		FUNC1(&lo_tcontext, tcontext, sizeof(lo_tcontext));
		lo_tcontext.type = target->bounds;

		FUNC0(scontext,
					  &lo_tcontext,
					  tclass,
					  &lo_avd);
		if ((lo_avd.allowed & avd->allowed) == avd->allowed)
			return;		/* no masked permission */
		masked = ~lo_avd.allowed & avd->allowed;
	}

	if (source->bounds && target->bounds) {
		FUNC2(&lo_avd, 0, sizeof(lo_avd));
		/*
		 * lo_scontext and lo_tcontext are already
		 * set up.
		 */

		FUNC0(&lo_scontext,
					  &lo_tcontext,
					  tclass,
					  &lo_avd);
		if ((lo_avd.allowed & avd->allowed) == avd->allowed)
			return;		/* no masked permission */
		masked = ~lo_avd.allowed & avd->allowed;
	}

	if (masked) {
		/* mask violated permissions */
		avd->allowed &= ~masked;

		/* audit masked permissions */
		FUNC3(scontext, tcontext,
					tclass, masked, "bounds");
	}
}