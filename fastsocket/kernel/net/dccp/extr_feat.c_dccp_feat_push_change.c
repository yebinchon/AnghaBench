
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct list_head {int dummy; } ;
struct dccp_feat_entry {void* needs_mandatory; int val; scalar_t__ empty_confirm; scalar_t__ needs_confirm; int state; void* is_local; void* feat_num; } ;
typedef int dccp_feat_val ;


 int ENOMEM ;
 int FEAT_INITIALISING ;
 struct dccp_feat_entry* dccp_feat_entry_new (struct list_head*,void*,void*) ;

__attribute__((used)) static int dccp_feat_push_change(struct list_head *fn_list, u8 feat, u8 local,
     u8 mandatory, dccp_feat_val *fval)
{
 struct dccp_feat_entry *new = dccp_feat_entry_new(fn_list, feat, local);

 if (new == ((void*)0))
  return -ENOMEM;

 new->feat_num = feat;
 new->is_local = local;
 new->state = FEAT_INITIALISING;
 new->needs_confirm = 0;
 new->empty_confirm = 0;
 new->val = *fval;
 new->needs_mandatory = mandatory;

 return 0;
}
