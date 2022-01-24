#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int umode_t ;
typedef  int uid_t ;
struct TYPE_5__ {char* from; } ;
typedef  TYPE_1__ substring_t ;
typedef  int gid_t ;

/* Variables and functions */
 int CONV_AUTO ; 
 int CONV_BINARY ; 
 int CONV_TEXT ; 
 int MAX_OPT_ARGS ; 
#define  Opt_case_asis 149 
#define  Opt_case_lower 148 
#define  Opt_check_none 147 
#define  Opt_check_normal 146 
#define  Opt_check_strict 145 
#define  Opt_chkdsk_always 144 
#define  Opt_chkdsk_errors 143 
#define  Opt_chkdsk_no 142 
#define  Opt_conv_auto 141 
#define  Opt_conv_binary 140 
#define  Opt_conv_text 139 
#define  Opt_eas_no 138 
#define  Opt_eas_ro 137 
#define  Opt_eas_rw 136 
#define  Opt_err_cont 135 
#define  Opt_err_panic 134 
#define  Opt_err_ro 133 
#define  Opt_gid 132 
#define  Opt_help 131 
#define  Opt_timeshift 130 
#define  Opt_uid 129 
#define  Opt_umask 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static int FUNC5(char *opts, uid_t *uid, gid_t *gid, umode_t *umask,
		      int *lowercase, int *conv, int *eas, int *chk, int *errs,
		      int *chkdsk, int *timeshift)
{
	char *p;
	int option;

	if (!opts)
		return 1;

	/*printk("Parsing opts: '%s'\n",opts);*/

	while ((p = FUNC4(&opts, ",")) != NULL) {
		substring_t args[MAX_OPT_ARGS];
		int token;
		if (!*p)
			continue;

		token = FUNC2(p, tokens, args);
		switch (token) {
		case Opt_help:
			return 2;
		case Opt_uid:
			if (FUNC0(args, &option))
				return 0;
			*uid = option;
			break;
		case Opt_gid:
			if (FUNC0(args, &option))
				return 0;
			*gid = option;
			break;
		case Opt_umask:
			if (FUNC1(args, &option))
				return 0;
			*umask = option;
			break;
		case Opt_case_lower:
			*lowercase = 1;
			break;
		case Opt_case_asis:
			*lowercase = 0;
			break;
		case Opt_conv_binary:
			*conv = CONV_BINARY;
			break;
		case Opt_conv_text:
			*conv = CONV_TEXT;
			break;
		case Opt_conv_auto:
			*conv = CONV_AUTO;
			break;
		case Opt_check_none:
			*chk = 0;
			break;
		case Opt_check_normal:
			*chk = 1;
			break;
		case Opt_check_strict:
			*chk = 2;
			break;
		case Opt_err_cont:
			*errs = 0;
			break;
		case Opt_err_ro:
			*errs = 1;
			break;
		case Opt_err_panic:
			*errs = 2;
			break;
		case Opt_eas_no:
			*eas = 0;
			break;
		case Opt_eas_ro:
			*eas = 1;
			break;
		case Opt_eas_rw:
			*eas = 2;
			break;
		case Opt_chkdsk_no:
			*chkdsk = 0;
			break;
		case Opt_chkdsk_errors:
			*chkdsk = 1;
			break;
		case Opt_chkdsk_always:
			*chkdsk = 2;
			break;
		case Opt_timeshift:
		{
			int m = 1;
			char *rhs = args[0].from;
			if (!rhs || !*rhs)
				return 0;
			if (*rhs == '-') m = -1;
			if (*rhs == '+' || *rhs == '-') rhs++;
			*timeshift = FUNC3(rhs, &rhs, 0) * m;
			if (*rhs)
				return 0;
			break;
		}
		default:
			return 0;
		}
	}
	return 1;
}