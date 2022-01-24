#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uid_t ;
struct TYPE_3__ {char* from; } ;
typedef  TYPE_1__ substring_t ;
struct ima_measure_rule_entry {int uid; scalar_t__ action; unsigned long fsmagic; int /*<<< orphan*/  flags; int /*<<< orphan*/  mask; void* func; } ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_INTEGRITY_RULE ; 
 int /*<<< orphan*/  AUDIT_OBJ_ROLE ; 
 int /*<<< orphan*/  AUDIT_OBJ_TYPE ; 
 int /*<<< orphan*/  AUDIT_OBJ_USER ; 
 int /*<<< orphan*/  AUDIT_SUBJ_ROLE ; 
 int /*<<< orphan*/  AUDIT_SUBJ_TYPE ; 
 int /*<<< orphan*/  AUDIT_SUBJ_USER ; 
 void* BPRM_CHECK ; 
 scalar_t__ DONT_MEASURE ; 
 int EINVAL ; 
 void* FILE_CHECK ; 
 void* FILE_MMAP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IMA_FSMAGIC ; 
 int /*<<< orphan*/  IMA_FUNC ; 
 int /*<<< orphan*/  IMA_MASK ; 
 int /*<<< orphan*/  IMA_UID ; 
 int /*<<< orphan*/  LSM_OBJ_ROLE ; 
 int /*<<< orphan*/  LSM_OBJ_TYPE ; 
 int /*<<< orphan*/  LSM_OBJ_USER ; 
 int /*<<< orphan*/  LSM_SUBJ_ROLE ; 
 int /*<<< orphan*/  LSM_SUBJ_TYPE ; 
 int /*<<< orphan*/  LSM_SUBJ_USER ; 
 int MAX_OPT_ARGS ; 
 int /*<<< orphan*/  MAY_APPEND ; 
 int /*<<< orphan*/  MAY_EXEC ; 
 int /*<<< orphan*/  MAY_READ ; 
 int /*<<< orphan*/  MAY_WRITE ; 
 scalar_t__ MEASURE ; 
#define  Opt_dont_measure 140 
#define  Opt_err 139 
#define  Opt_fsmagic 138 
#define  Opt_func 137 
#define  Opt_mask 136 
#define  Opt_measure 135 
#define  Opt_obj_role 134 
#define  Opt_obj_type 133 
#define  Opt_obj_user 132 
#define  Opt_subj_role 131 
#define  Opt_subj_type 130 
#define  Opt_subj_user 129 
#define  Opt_uid 128 
 scalar_t__ UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*,char*,int) ; 
 struct audit_buffer* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,char*,char*) ; 
 int FUNC4 (struct ima_measure_rule_entry*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  policy_tokens ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*,int,unsigned long*) ; 
 char* FUNC8 (char**,char*) ; 

__attribute__((used)) static int FUNC9(char *rule, struct ima_measure_rule_entry *entry)
{
	struct audit_buffer *ab;
	char *p;
	int result = 0;

	ab = FUNC2(NULL, GFP_KERNEL, AUDIT_INTEGRITY_RULE);

	entry->uid = -1;
	entry->action = UNKNOWN;
	while ((p = FUNC8(&rule, " \t")) != NULL) {
		substring_t args[MAX_OPT_ARGS];
		int token;
		unsigned long lnum;

		if (result < 0)
			break;
		if ((*p == '\0') || (*p == ' ') || (*p == '\t'))
			continue;
		token = FUNC5(p, policy_tokens, args);
		switch (token) {
		case Opt_measure:
			FUNC3(ab, "action", "measure");

			if (entry->action != UNKNOWN)
				result = -EINVAL;

			entry->action = MEASURE;
			break;
		case Opt_dont_measure:
			FUNC3(ab, "action", "dont_measure");

			if (entry->action != UNKNOWN)
				result = -EINVAL;

			entry->action = DONT_MEASURE;
			break;
		case Opt_func:
			FUNC3(ab, "func", args[0].from);

			if (entry->func)
				result  = -EINVAL;

			if (FUNC6(args[0].from, "FILE_CHECK") == 0)
				entry->func = FILE_CHECK;
			/* PATH_CHECK is for backwards compat */
			else if (FUNC6(args[0].from, "PATH_CHECK") == 0)
				entry->func = FILE_CHECK;
			else if (FUNC6(args[0].from, "FILE_MMAP") == 0)
				entry->func = FILE_MMAP;
			else if (FUNC6(args[0].from, "BPRM_CHECK") == 0)
				entry->func = BPRM_CHECK;
			else
				result = -EINVAL;
			if (!result)
				entry->flags |= IMA_FUNC;
			break;
		case Opt_mask:
			FUNC3(ab, "mask", args[0].from);

			if (entry->mask)
				result = -EINVAL;

			if ((FUNC6(args[0].from, "MAY_EXEC")) == 0)
				entry->mask = MAY_EXEC;
			else if (FUNC6(args[0].from, "MAY_WRITE") == 0)
				entry->mask = MAY_WRITE;
			else if (FUNC6(args[0].from, "MAY_READ") == 0)
				entry->mask = MAY_READ;
			else if (FUNC6(args[0].from, "MAY_APPEND") == 0)
				entry->mask = MAY_APPEND;
			else
				result = -EINVAL;
			if (!result)
				entry->flags |= IMA_MASK;
			break;
		case Opt_fsmagic:
			FUNC3(ab, "fsmagic", args[0].from);

			if (entry->fsmagic) {
				result = -EINVAL;
				break;
			}

			result = FUNC7(args[0].from, 16,
						&entry->fsmagic);
			if (!result)
				entry->flags |= IMA_FSMAGIC;
			break;
		case Opt_uid:
			FUNC3(ab, "uid", args[0].from);

			if (entry->uid != -1) {
				result = -EINVAL;
				break;
			}

			result = FUNC7(args[0].from, 10, &lnum);
			if (!result) {
				entry->uid = (uid_t) lnum;
				if (entry->uid != lnum)
					result = -EINVAL;
				else
					entry->flags |= IMA_UID;
			}
			break;
		case Opt_obj_user:
			FUNC3(ab, "obj_user", args[0].from);
			result = FUNC4(entry, args[0].from,
						   LSM_OBJ_USER,
						   AUDIT_OBJ_USER);
			break;
		case Opt_obj_role:
			FUNC3(ab, "obj_role", args[0].from);
			result = FUNC4(entry, args[0].from,
						   LSM_OBJ_ROLE,
						   AUDIT_OBJ_ROLE);
			break;
		case Opt_obj_type:
			FUNC3(ab, "obj_type", args[0].from);
			result = FUNC4(entry, args[0].from,
						   LSM_OBJ_TYPE,
						   AUDIT_OBJ_TYPE);
			break;
		case Opt_subj_user:
			FUNC3(ab, "subj_user", args[0].from);
			result = FUNC4(entry, args[0].from,
						   LSM_SUBJ_USER,
						   AUDIT_SUBJ_USER);
			break;
		case Opt_subj_role:
			FUNC3(ab, "subj_role", args[0].from);
			result = FUNC4(entry, args[0].from,
						   LSM_SUBJ_ROLE,
						   AUDIT_SUBJ_ROLE);
			break;
		case Opt_subj_type:
			FUNC3(ab, "subj_type", args[0].from);
			result = FUNC4(entry, args[0].from,
						   LSM_SUBJ_TYPE,
						   AUDIT_SUBJ_TYPE);
			break;
		case Opt_err:
			FUNC3(ab, "UNKNOWN", p);
			result = -EINVAL;
			break;
		}
	}
	if (!result && (entry->action == UNKNOWN))
		result = -EINVAL;

	FUNC1(ab, "res=%d", !result);
	FUNC0(ab);
	return result;
}