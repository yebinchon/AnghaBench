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
struct update {int set; int rb; int /*<<< orphan*/  addr; int /*<<< orphan*/  rb_bcast; int /*<<< orphan*/  rb_mask; int /*<<< orphan*/  ifindex; } ;
struct snmp_dependency {int dummy; } ;
struct snmp_context {int dummy; } ;
struct mibifa {int flags; int /*<<< orphan*/  inbcast; int /*<<< orphan*/  inmask; } ;
typedef  enum snmp_depop { ____Placeholder_snmp_depop } snmp_depop ;

/* Variables and functions */
 int MIBIFA_DESTROYED ; 
 int RB_CREATE ; 
 int RB_DESTROY ; 
 int RB_MODIFY ; 
#define  SNMP_DEPOP_COMMIT 130 
#define  SNMP_DEPOP_FINISH 129 
#define  SNMP_DEPOP_ROLLBACK 128 
 int SNMP_ERR_INCONS_NAME ; 
 int SNMP_ERR_NOERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mibifa*,int /*<<< orphan*/ ) ; 
 int UPD_IFINDEX ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct update*) ; 
 int FUNC3 (struct snmp_context*,struct update*,struct mibifa*) ; 
 int /*<<< orphan*/  FUNC4 (struct mibifa*) ; 
 int /*<<< orphan*/  link ; 
 struct mibifa* FUNC5 (int /*<<< orphan*/ ) ; 
 int mib_iflist_bad ; 
 int /*<<< orphan*/  FUNC6 (struct mibifa*) ; 
 int /*<<< orphan*/  FUNC7 (struct mibifa*) ; 
 int /*<<< orphan*/  FUNC8 (struct mibifa*) ; 
 int /*<<< orphan*/  mibifa_list ; 
 int FUNC9 (struct update*,struct mibifa*) ; 

__attribute__((used)) static int
FUNC10(struct snmp_context *ctx, struct snmp_dependency *dep,
    enum snmp_depop op)
{
	struct update *upd = (struct update *)dep;
	struct mibifa *ifa;

	switch (op) {

	  case SNMP_DEPOP_COMMIT:
		if ((ifa = FUNC5(upd->addr)) == NULL) {
			/* non existing entry - must have ifindex */
			if (!(upd->set & UPD_IFINDEX))
				return (SNMP_ERR_INCONS_NAME);
			return (FUNC2(upd));
		}
		/* existing entry */
		if ((upd->set & UPD_IFINDEX) && upd->ifindex == 0) {
			/* delete */
			return (FUNC3(ctx, upd, ifa));
		}
		/* modify entry */
		return (FUNC9(upd, ifa));

	  case SNMP_DEPOP_ROLLBACK:
		if ((ifa = FUNC5(upd->addr)) == NULL) {
			/* ups */
			mib_iflist_bad = 1;
			return (SNMP_ERR_NOERROR);
		}
		if (upd->rb & RB_CREATE) {
			FUNC6(ifa);
			return (SNMP_ERR_NOERROR);
		}
		if (upd->rb & RB_DESTROY) {
			FUNC7(ifa);
			return (SNMP_ERR_NOERROR);
		}
		if (upd->rb & RB_MODIFY) {
			ifa->inmask = upd->rb_mask;
			ifa->inbcast = upd->rb_bcast;
			FUNC8(ifa);
			return (SNMP_ERR_NOERROR);
		}
		return (SNMP_ERR_NOERROR);

	  case SNMP_DEPOP_FINISH:
		if ((upd->rb & RB_DESTROY) &&
		    (ifa = FUNC5(upd->addr)) != NULL &&
		    (ifa->flags & MIBIFA_DESTROYED)) {
			FUNC0(&mibifa_list, ifa, link);
			FUNC4(ifa);
		}
		return (SNMP_ERR_NOERROR);
	}
	FUNC1();
}