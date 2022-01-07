
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INITIAL_MAX_CCLS ;
 int INITIAL_MAX_CCL_TBL_SIZE ;
 int INITIAL_MAX_DFAS ;
 int INITIAL_MAX_DFA_SIZE ;
 int INITIAL_MAX_RULES ;
 int INITIAL_MAX_SCS ;
 int INITIAL_MAX_TEMPLATE_XPAIRS ;
 int INITIAL_MAX_XPAIRS ;
 int INITIAL_MNS ;
 int MAXIMUM_MNS ;
 int MAXIMUM_MNS_LONG ;
 void* accptnum ;
 void* accsiz ;
 int allocate_Character_array (int ) ;
 void* allocate_bool_array (int ) ;
 int allocate_char_ptr_array (int ) ;
 int allocate_dfaacc_union (int ) ;
 int allocate_int_ptr_array (int ) ;
 void* allocate_integer_array (int ) ;
 void* assoc_rule ;
 void* base ;
 void* ccl_has_nl ;
 void* ccllen ;
 void* cclmap ;
 void* cclng ;
 int ccltbl ;
 void* chk ;
 int current_max_ccl_tbl_size ;
 int current_max_dfa_size ;
 int current_max_dfas ;
 int current_max_rules ;
 int current_max_scs ;
 int current_max_template_xpairs ;
 int current_max_xpairs ;
 int current_maxccls ;
 int current_mns ;
 void* def ;
 int dfaacc ;
 void* dfasiz ;
 void* dhash ;
 int dss ;
 void* finalst ;
 void* firstst ;
 void* lastst ;
 scalar_t__ long_align ;
 int maximum_mns ;
 int* nultrans ;
 void* nxt ;
 void* rule_has_nl ;
 void* rule_linenum ;
 void* rule_type ;
 void* rule_useful ;
 void* scbol ;
 void* sceof ;
 int scname ;
 void* scset ;
 void* scxclu ;
 void* state_type ;
 void* tnxt ;
 void* trans1 ;
 void* trans2 ;
 void* transchar ;

void set_up_initial_allocations ()
{
 maximum_mns = (long_align ? MAXIMUM_MNS_LONG : MAXIMUM_MNS);
 current_mns = INITIAL_MNS;
 firstst = allocate_integer_array (current_mns);
 lastst = allocate_integer_array (current_mns);
 finalst = allocate_integer_array (current_mns);
 transchar = allocate_integer_array (current_mns);
 trans1 = allocate_integer_array (current_mns);
 trans2 = allocate_integer_array (current_mns);
 accptnum = allocate_integer_array (current_mns);
 assoc_rule = allocate_integer_array (current_mns);
 state_type = allocate_integer_array (current_mns);

 current_max_rules = INITIAL_MAX_RULES;
 rule_type = allocate_integer_array (current_max_rules);
 rule_linenum = allocate_integer_array (current_max_rules);
 rule_useful = allocate_integer_array (current_max_rules);
 rule_has_nl = allocate_bool_array (current_max_rules);

 current_max_scs = INITIAL_MAX_SCS;
 scset = allocate_integer_array (current_max_scs);
 scbol = allocate_integer_array (current_max_scs);
 scxclu = allocate_integer_array (current_max_scs);
 sceof = allocate_integer_array (current_max_scs);
 scname = allocate_char_ptr_array (current_max_scs);

 current_maxccls = INITIAL_MAX_CCLS;
 cclmap = allocate_integer_array (current_maxccls);
 ccllen = allocate_integer_array (current_maxccls);
 cclng = allocate_integer_array (current_maxccls);
 ccl_has_nl = allocate_bool_array (current_maxccls);

 current_max_ccl_tbl_size = INITIAL_MAX_CCL_TBL_SIZE;
 ccltbl = allocate_Character_array (current_max_ccl_tbl_size);

 current_max_dfa_size = INITIAL_MAX_DFA_SIZE;

 current_max_xpairs = INITIAL_MAX_XPAIRS;
 nxt = allocate_integer_array (current_max_xpairs);
 chk = allocate_integer_array (current_max_xpairs);

 current_max_template_xpairs = INITIAL_MAX_TEMPLATE_XPAIRS;
 tnxt = allocate_integer_array (current_max_template_xpairs);

 current_max_dfas = INITIAL_MAX_DFAS;
 base = allocate_integer_array (current_max_dfas);
 def = allocate_integer_array (current_max_dfas);
 dfasiz = allocate_integer_array (current_max_dfas);
 accsiz = allocate_integer_array (current_max_dfas);
 dhash = allocate_integer_array (current_max_dfas);
 dss = allocate_int_ptr_array (current_max_dfas);
 dfaacc = allocate_dfaacc_union (current_max_dfas);

 nultrans = (int *) 0;
}
