
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct list_head {int dummy; } ;
struct dccp_request_sock {struct list_head dreq_featneg; } ;
struct TYPE_3__ {int* vec; } ;
struct TYPE_4__ {TYPE_1__ sp; } ;
struct dccp_feat_entry {TYPE_2__ val; int empty_confirm; } ;


 int DCCPF_CCID ;
 int dccp_feat_default_value (int ) ;
 struct dccp_feat_entry* dccp_feat_list_lookup (struct list_head*,int ,int) ;
 scalar_t__ dccp_feat_propagate_ccid (struct list_head*,int,int) ;

int dccp_feat_server_ccid_dependencies(struct dccp_request_sock *dreq)
{
 struct list_head *fn = &dreq->dreq_featneg;
 struct dccp_feat_entry *entry;
 u8 is_local, ccid;

 for (is_local = 0; is_local <= 1; is_local++) {
  entry = dccp_feat_list_lookup(fn, DCCPF_CCID, is_local);

  if (entry != ((void*)0) && !entry->empty_confirm)
   ccid = entry->val.sp.vec[0];
  else
   ccid = dccp_feat_default_value(DCCPF_CCID);

  if (dccp_feat_propagate_ccid(fn, ccid, is_local))
   return -1;
 }
 return 0;
}
