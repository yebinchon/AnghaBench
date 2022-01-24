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
struct seq_file {int dummy; } ;
struct security_mnt_opts {int num_mnt_opts; char** mnt_opts; int* mnt_opts_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CONTEXT_MNT 132 
 char* CONTEXT_STR ; 
#define  DEFCONTEXT_MNT 131 
 char* DEFCONTEXT_STR ; 
#define  FSCONTEXT_MNT 130 
 char* FSCONTEXT_STR ; 
 char* LABELSUPP_STR ; 
#define  ROOTCONTEXT_MNT 129 
 char* ROOTCONTEXT_STR ; 
#define  SE_SBLABELSUPP 128 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static void FUNC4(struct seq_file *m,
			       struct security_mnt_opts *opts)
{
	int i;
	char *prefix;

	for (i = 0; i < opts->num_mnt_opts; i++) {
		char *has_comma;

		if (opts->mnt_opts[i])
			has_comma = FUNC3(opts->mnt_opts[i], ',');
		else
			has_comma = NULL;

		switch (opts->mnt_opts_flags[i]) {
		case CONTEXT_MNT:
			prefix = CONTEXT_STR;
			break;
		case FSCONTEXT_MNT:
			prefix = FSCONTEXT_STR;
			break;
		case ROOTCONTEXT_MNT:
			prefix = ROOTCONTEXT_STR;
			break;
		case DEFCONTEXT_MNT:
			prefix = DEFCONTEXT_STR;
			break;
		case SE_SBLABELSUPP:
			FUNC1(m, ',');
			FUNC2(m, LABELSUPP_STR);
			continue;
		default:
			FUNC0();
		};
		/* we need a comma before each option */
		FUNC1(m, ',');
		FUNC2(m, prefix);
		if (has_comma)
			FUNC1(m, '\"');
		FUNC2(m, opts->mnt_opts[i]);
		if (has_comma)
			FUNC1(m, '\"');
	}
}