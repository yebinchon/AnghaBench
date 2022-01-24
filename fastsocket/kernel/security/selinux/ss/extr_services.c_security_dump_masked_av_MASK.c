#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct context {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  table; } ;
struct common_datum {TYPE_1__ permissions; } ;
struct TYPE_6__ {int /*<<< orphan*/  table; } ;
struct class_datum {TYPE_2__ permissions; struct common_datum* comdatum; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  audit_context; } ;
struct TYPE_7__ {char** p_class_val_to_name; struct class_datum** class_val_to_struct; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_SELINUX_ERR ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*,char*,char const*,char*,...) ; 
 struct audit_buffer* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct context*,char**,int*) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  dump_masked_av_helper ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_3__ policydb ; 

__attribute__((used)) static void FUNC6(struct context *scontext,
				    struct context *tcontext,
				    u16 tclass,
				    u32 permissions,
				    const char *reason)
{
	struct common_datum *common_dat;
	struct class_datum *tclass_dat;
	struct audit_buffer *ab;
	char *tclass_name;
	char *scontext_name = NULL;
	char *tcontext_name = NULL;
	char *permission_names[32];
	int index, length;
	bool need_comma = false;

	if (!permissions)
		return;

	tclass_name = policydb.p_class_val_to_name[tclass - 1];
	tclass_dat = policydb.class_val_to_struct[tclass - 1];
	common_dat = tclass_dat->comdatum;

	/* init permission_names */
	if (common_dat &&
	    FUNC4(common_dat->permissions.table,
			dump_masked_av_helper, permission_names) < 0)
		goto out;

	if (FUNC4(tclass_dat->permissions.table,
			dump_masked_av_helper, permission_names) < 0)
		goto out;

	/* get scontext/tcontext in text form */
	if (FUNC3(scontext,
				     &scontext_name, &length) < 0)
		goto out;

	if (FUNC3(tcontext,
				     &tcontext_name, &length) < 0)
		goto out;

	/* audit a message */
	ab = FUNC2(current->audit_context,
			     GFP_ATOMIC, AUDIT_SELINUX_ERR);
	if (!ab)
		goto out;

	FUNC1(ab, "op=security_compute_av reason=%s "
			 "scontext=%s tcontext=%s tclass=%s perms=",
			 reason, scontext_name, tcontext_name, tclass_name);

	for (index = 0; index < 32; index++) {
		u32 mask = (1 << index);

		if ((mask & permissions) == 0)
			continue;

		FUNC1(ab, "%s%s",
				 need_comma ? "," : "",
				 permission_names[index]
				 ? permission_names[index] : "????");
		need_comma = true;
	}
	FUNC0(ab);
out:
	/* release scontext/tcontext */
	FUNC5(tcontext_name);
	FUNC5(scontext_name);

	return;
}