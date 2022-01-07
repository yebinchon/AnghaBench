
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct list_head {int dummy; } ;
struct TYPE_3__ {scalar_t__ nn; } ;
struct dccp_feat_entry {int needs_confirm; scalar_t__ needs_mandatory; TYPE_1__ val; int empty_confirm; int state; void* is_local; void* feat_num; } ;
typedef TYPE_1__ dccp_feat_val ;


 int DCCP_RESET_CODE_TOO_BUSY ;
 int FEAT_STABLE ;
 struct dccp_feat_entry* dccp_feat_entry_new (struct list_head*,void*,void*) ;

__attribute__((used)) static int dccp_feat_push_confirm(struct list_head *fn_list, u8 feat, u8 local,
      dccp_feat_val *fval)
{
 struct dccp_feat_entry *new = dccp_feat_entry_new(fn_list, feat, local);

 if (new == ((void*)0))
  return DCCP_RESET_CODE_TOO_BUSY;

 new->feat_num = feat;
 new->is_local = local;
 new->state = FEAT_STABLE;
 new->needs_confirm = 1;
 new->empty_confirm = (fval == ((void*)0));
 new->val.nn = 0;
 if (!new->empty_confirm)
  new->val = *fval;
 new->needs_mandatory = 0;

 return 0;
}
