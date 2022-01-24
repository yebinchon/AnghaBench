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

/* Variables and functions */
 int /*<<< orphan*/  INITIAL_MAX_CCLS ; 
 int /*<<< orphan*/  INITIAL_MAX_CCL_TBL_SIZE ; 
 int /*<<< orphan*/  INITIAL_MAX_DFAS ; 
 int /*<<< orphan*/  INITIAL_MAX_DFA_SIZE ; 
 int /*<<< orphan*/  INITIAL_MAX_RULES ; 
 int /*<<< orphan*/  INITIAL_MAX_SCS ; 
 int /*<<< orphan*/  INITIAL_MAX_TEMPLATE_XPAIRS ; 
 int /*<<< orphan*/  INITIAL_MAX_XPAIRS ; 
 int /*<<< orphan*/  INITIAL_MNS ; 
 int /*<<< orphan*/  MAXIMUM_MNS ; 
 int /*<<< orphan*/  MAXIMUM_MNS_LONG ; 
 void* accptnum ; 
 void* accsiz ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* assoc_rule ; 
 void* base ; 
 void* ccl_has_nl ; 
 void* ccllen ; 
 void* cclmap ; 
 void* cclng ; 
 int /*<<< orphan*/  ccltbl ; 
 void* chk ; 
 int /*<<< orphan*/  current_max_ccl_tbl_size ; 
 int /*<<< orphan*/  current_max_dfa_size ; 
 int /*<<< orphan*/  current_max_dfas ; 
 int /*<<< orphan*/  current_max_rules ; 
 int /*<<< orphan*/  current_max_scs ; 
 int /*<<< orphan*/  current_max_template_xpairs ; 
 int /*<<< orphan*/  current_max_xpairs ; 
 int /*<<< orphan*/  current_maxccls ; 
 int /*<<< orphan*/  current_mns ; 
 void* def ; 
 int /*<<< orphan*/  dfaacc ; 
 void* dfasiz ; 
 void* dhash ; 
 int /*<<< orphan*/  dss ; 
 void* finalst ; 
 void* firstst ; 
 void* lastst ; 
 scalar_t__ long_align ; 
 int /*<<< orphan*/  maximum_mns ; 
 int* nultrans ; 
 void* nxt ; 
 void* rule_has_nl ; 
 void* rule_linenum ; 
 void* rule_type ; 
 void* rule_useful ; 
 void* scbol ; 
 void* sceof ; 
 int /*<<< orphan*/  scname ; 
 void* scset ; 
 void* scxclu ; 
 void* state_type ; 
 void* tnxt ; 
 void* trans1 ; 
 void* trans2 ; 
 void* transchar ; 

void FUNC6 ()
{
	maximum_mns = (long_align ? MAXIMUM_MNS_LONG : MAXIMUM_MNS);
	current_mns = INITIAL_MNS;
	firstst = FUNC5 (current_mns);
	lastst = FUNC5 (current_mns);
	finalst = FUNC5 (current_mns);
	transchar = FUNC5 (current_mns);
	trans1 = FUNC5 (current_mns);
	trans2 = FUNC5 (current_mns);
	accptnum = FUNC5 (current_mns);
	assoc_rule = FUNC5 (current_mns);
	state_type = FUNC5 (current_mns);

	current_max_rules = INITIAL_MAX_RULES;
	rule_type = FUNC5 (current_max_rules);
	rule_linenum = FUNC5 (current_max_rules);
	rule_useful = FUNC5 (current_max_rules);
	rule_has_nl = FUNC1 (current_max_rules);

	current_max_scs = INITIAL_MAX_SCS;
	scset = FUNC5 (current_max_scs);
	scbol = FUNC5 (current_max_scs);
	scxclu = FUNC5 (current_max_scs);
	sceof = FUNC5 (current_max_scs);
	scname = FUNC2 (current_max_scs);

	current_maxccls = INITIAL_MAX_CCLS;
	cclmap = FUNC5 (current_maxccls);
	ccllen = FUNC5 (current_maxccls);
	cclng = FUNC5 (current_maxccls);
	ccl_has_nl = FUNC1 (current_maxccls);

	current_max_ccl_tbl_size = INITIAL_MAX_CCL_TBL_SIZE;
	ccltbl = FUNC0 (current_max_ccl_tbl_size);

	current_max_dfa_size = INITIAL_MAX_DFA_SIZE;

	current_max_xpairs = INITIAL_MAX_XPAIRS;
	nxt = FUNC5 (current_max_xpairs);
	chk = FUNC5 (current_max_xpairs);

	current_max_template_xpairs = INITIAL_MAX_TEMPLATE_XPAIRS;
	tnxt = FUNC5 (current_max_template_xpairs);

	current_max_dfas = INITIAL_MAX_DFAS;
	base = FUNC5 (current_max_dfas);
	def = FUNC5 (current_max_dfas);
	dfasiz = FUNC5 (current_max_dfas);
	accsiz = FUNC5 (current_max_dfas);
	dhash = FUNC5 (current_max_dfas);
	dss = FUNC4 (current_max_dfas);
	dfaacc = FUNC3 (current_max_dfas);

	nultrans = (int *) 0;
}