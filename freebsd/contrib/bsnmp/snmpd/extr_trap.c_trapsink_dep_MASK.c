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
struct trapsink_dep {int set; int rb; int /*<<< orphan*/  status; } ;
struct trapsink {int dummy; } ;
struct snmp_dependency {int /*<<< orphan*/  idx; } ;
struct snmp_context {int /*<<< orphan*/  code; } ;
typedef  enum snmp_depop { ____Placeholder_snmp_depop } snmp_depop ;

/* Variables and functions */
 struct trapsink* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  SNMP_DEPOP_COMMIT 130 
#define  SNMP_DEPOP_FINISH 129 
#define  SNMP_DEPOP_ROLLBACK 128 
 int SNMP_ERR_INCONS_VALUE ; 
 int SNMP_ERR_NOERROR ; 
 int /*<<< orphan*/  SNMP_RET_OK ; 
 int TDEP_CREATE ; 
 int TDEP_DESTROY ; 
 int TDEP_MODIFY ; 
 int TDEP_STATUS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct trapsink_dep*) ; 
 int FUNC3 (struct snmp_context*,struct trapsink*,struct trapsink_dep*) ; 
 int /*<<< orphan*/  FUNC4 (struct trapsink*) ; 
 int /*<<< orphan*/  trapsink_list ; 
 int FUNC5 (struct trapsink*,struct trapsink_dep*) ; 
 int FUNC6 (struct trapsink*,struct trapsink_dep*) ; 
 int FUNC7 (struct trapsink*,struct trapsink_dep*) ; 

__attribute__((used)) static int
FUNC8(struct snmp_context *ctx, struct snmp_dependency *dep,
    enum snmp_depop op)
{
	struct trapsink_dep *tdep = (struct trapsink_dep *)dep;
	struct trapsink *t;

	t = FUNC0(&trapsink_list, &dep->idx, 0);

	switch (op) {

	  case SNMP_DEPOP_COMMIT:
		if (tdep->set & TDEP_STATUS) {
			switch (tdep->status) {

			  case 1:
			  case 2:
				if (t == NULL)
					return (SNMP_ERR_INCONS_VALUE);
				return (FUNC5(t, tdep));

			  case 4:
			  case 5:
				if (t != NULL)
					return (SNMP_ERR_INCONS_VALUE);
				return (FUNC2(tdep));

			  case 6:
				if (t == NULL)
					return (SNMP_ERR_NOERROR);
				return (FUNC3(ctx, t, tdep));
			}
		} else if (tdep->set != 0)
			return (FUNC5(t, tdep));

		return (SNMP_ERR_NOERROR);

	  case SNMP_DEPOP_ROLLBACK:
		if (tdep->rb & TDEP_CREATE) {
			FUNC4(t);
			return (SNMP_ERR_NOERROR);
		}
		if (tdep->rb & TDEP_MODIFY)
			return (FUNC7(t, tdep));
		if(tdep->rb & TDEP_DESTROY)
			return (FUNC6(t, tdep));
		return (SNMP_ERR_NOERROR);

	  case SNMP_DEPOP_FINISH:
		if ((tdep->rb & TDEP_DESTROY) && t != NULL &&
		    ctx->code == SNMP_RET_OK)
			FUNC4(t);
		return (SNMP_ERR_NOERROR);
	}
	FUNC1();
}