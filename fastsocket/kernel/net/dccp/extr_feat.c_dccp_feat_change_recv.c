
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct list_head {int dummy; } ;
struct dccp_feat_entry {scalar_t__ state; int empty_confirm; int needs_confirm; scalar_t__ needs_mandatory; int val; } ;
struct TYPE_5__ {scalar_t__* vec; } ;
struct TYPE_6__ {TYPE_1__ sp; int nn; } ;
typedef TYPE_2__ dccp_feat_val ;


 scalar_t__ DCCPF_CCID ;
 scalar_t__ DCCPO_CHANGE_R ;
 scalar_t__ DCCP_RESET_CODE_MANDATORY_ERROR ;
 scalar_t__ DCCP_RESET_CODE_OPTION_ERROR ;
 scalar_t__ DCCP_RESET_CODE_TOO_BUSY ;
 scalar_t__ FEAT_INITIALISING ;
 scalar_t__ FEAT_NN ;
 scalar_t__ FEAT_STABLE ;
 scalar_t__ FEAT_UNKNOWN ;
 scalar_t__ FEAT_UNSTABLE ;
 int WARN_ON (int) ;
 int ccid_support_check (scalar_t__*,int) ;
 int dccp_decode_value_var (scalar_t__*,scalar_t__) ;
 scalar_t__ dccp_feat_clone_sp_val (TYPE_2__*,scalar_t__*,int) ;
 scalar_t__ dccp_feat_default_value (scalar_t__) ;
 int dccp_feat_is_valid_nn_val (scalar_t__,int ) ;
 int dccp_feat_is_valid_sp_val (scalar_t__,scalar_t__) ;
 struct dccp_feat_entry* dccp_feat_list_lookup (struct list_head*,scalar_t__,int const) ;
 int dccp_feat_preflist_match (scalar_t__*,int,scalar_t__*,scalar_t__) ;
 int dccp_feat_print_opt (scalar_t__,scalar_t__,scalar_t__*,scalar_t__,scalar_t__) ;
 scalar_t__ dccp_feat_push_confirm (struct list_head*,scalar_t__,int const,TYPE_2__*) ;
 scalar_t__ dccp_feat_reconcile (int *,scalar_t__*,int,int const,int) ;
 scalar_t__ dccp_feat_type (scalar_t__) ;
 scalar_t__ dccp_push_empty_confirm (struct list_head*,scalar_t__,int const) ;
 int kfree (scalar_t__*) ;

__attribute__((used)) static u8 dccp_feat_change_recv(struct list_head *fn, u8 is_mandatory, u8 opt,
    u8 feat, u8 *val, u8 len, const bool server)
{
 u8 defval, type = dccp_feat_type(feat);
 const bool local = (opt == DCCPO_CHANGE_R);
 struct dccp_feat_entry *entry;
 dccp_feat_val fval;

 if (len == 0 || type == FEAT_UNKNOWN)
  goto unknown_feature_or_value;

 dccp_feat_print_opt(opt, feat, val, len, is_mandatory);





 if (type == FEAT_NN) {
  if (local || len > sizeof(fval.nn))
   goto unknown_feature_or_value;


  fval.nn = dccp_decode_value_var(val, len);
  if (!dccp_feat_is_valid_nn_val(feat, fval.nn))
   goto unknown_feature_or_value;

  return dccp_feat_push_confirm(fn, feat, local, &fval);
 }




 entry = dccp_feat_list_lookup(fn, feat, local);
 if (entry == ((void*)0)) {
  if (dccp_feat_clone_sp_val(&fval, val, 1))
   return DCCP_RESET_CODE_TOO_BUSY;

  if (len > 1 && server) {
   defval = dccp_feat_default_value(feat);
   if (dccp_feat_preflist_match(&defval, 1, val, len) > -1)
    fval.sp.vec[0] = defval;
  } else if (!dccp_feat_is_valid_sp_val(feat, fval.sp.vec[0])) {
   kfree(fval.sp.vec);
   goto unknown_feature_or_value;
  }


  if (feat == DCCPF_CCID && !ccid_support_check(fval.sp.vec, 1)) {
   kfree(fval.sp.vec);
   goto not_valid_or_not_known;
  }

  return dccp_feat_push_confirm(fn, feat, local, &fval);

 } else if (entry->state == FEAT_UNSTABLE) {
  return 0;
 }

 if (dccp_feat_reconcile(&entry->val, val, len, server, 1)) {
  entry->empty_confirm = 0;
 } else if (is_mandatory) {
  return DCCP_RESET_CODE_MANDATORY_ERROR;
 } else if (entry->state == FEAT_INITIALISING) {
  WARN_ON(!server);
  defval = dccp_feat_default_value(feat);
  if (!dccp_feat_reconcile(&entry->val, &defval, 1, server, 1))
   return DCCP_RESET_CODE_OPTION_ERROR;
  entry->empty_confirm = 1;
 }
 entry->needs_confirm = 1;
 entry->needs_mandatory = 0;
 entry->state = FEAT_STABLE;
 return 0;

unknown_feature_or_value:
 if (!is_mandatory)
  return dccp_push_empty_confirm(fn, feat, local);

not_valid_or_not_known:
 return is_mandatory ? DCCP_RESET_CODE_MANDATORY_ERROR
       : DCCP_RESET_CODE_OPTION_ERROR;
}
