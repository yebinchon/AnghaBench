#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct context {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  audit_context; } ;
struct TYPE_3__ {int /*<<< orphan*/ * p_class_val_to_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_SELINUX_ERR ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct context*,char**,int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__ policydb ; 
 int /*<<< orphan*/  selinux_enforcing ; 

__attribute__((used)) static int FUNC3(struct context *ocontext,
					   struct context *ncontext,
					   struct context *tcontext,
					   u16 tclass)
{
	char *o = NULL, *n = NULL, *t = NULL;
	u32 olen, nlen, tlen;

	if (FUNC1(ocontext, &o, &olen) < 0)
		goto out;
	if (FUNC1(ncontext, &n, &nlen) < 0)
		goto out;
	if (FUNC1(tcontext, &t, &tlen) < 0)
		goto out;
	FUNC0(current->audit_context, GFP_ATOMIC, AUDIT_SELINUX_ERR,
		  "security_validate_transition:  denied for"
		  " oldcontext=%s newcontext=%s taskcontext=%s tclass=%s",
		  o, n, t, policydb.p_class_val_to_name[tclass-1]);
out:
	FUNC2(o);
	FUNC2(n);
	FUNC2(t);

	if (!selinux_enforcing)
		return 0;
	return -EPERM;
}