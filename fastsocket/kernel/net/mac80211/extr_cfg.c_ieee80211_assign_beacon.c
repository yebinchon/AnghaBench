
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int beacon; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;
struct cfg80211_beacon_data {int head_len; int tail_len; int probe_resp_len; int probe_resp; int * tail; int * head; } ;
struct beacon_data {int head_len; int tail_len; int * tail; int * head; } ;


 int BSS_CHANGED_AP_PROBE_RESP ;
 int BSS_CHANGED_BEACON ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ieee80211_set_probe_resp (struct ieee80211_sub_if_data*,int ,int ) ;
 int kfree_rcu (struct beacon_data*,int ) ;
 struct beacon_data* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int rcu_assign_pointer (int ,struct beacon_data*) ;
 int rcu_head ;
 struct beacon_data* rtnl_dereference (int ) ;

__attribute__((used)) static int ieee80211_assign_beacon(struct ieee80211_sub_if_data *sdata,
       struct cfg80211_beacon_data *params)
{
 struct beacon_data *new, *old;
 int new_head_len, new_tail_len;
 int size, err;
 u32 changed = BSS_CHANGED_BEACON;

 old = rtnl_dereference(sdata->u.ap.beacon);


 if (!params->head && !old)
  return -EINVAL;


 if (params->head)
  new_head_len = params->head_len;
 else
  new_head_len = old->head_len;


 if (params->tail || !old)

  new_tail_len = params->tail_len;
 else
  new_tail_len = old->tail_len;

 size = sizeof(*new) + new_head_len + new_tail_len;

 new = kzalloc(size, GFP_KERNEL);
 if (!new)
  return -ENOMEM;







 new->head = ((u8 *) new) + sizeof(*new);
 new->tail = new->head + new_head_len;
 new->head_len = new_head_len;
 new->tail_len = new_tail_len;


 if (params->head)
  memcpy(new->head, params->head, new_head_len);
 else
  memcpy(new->head, old->head, new_head_len);


 if (params->tail)
  memcpy(new->tail, params->tail, new_tail_len);
 else
  if (old)
   memcpy(new->tail, old->tail, new_tail_len);

 err = ieee80211_set_probe_resp(sdata, params->probe_resp,
           params->probe_resp_len);
 if (err < 0)
  return err;
 if (err == 0)
  changed |= BSS_CHANGED_AP_PROBE_RESP;

 rcu_assign_pointer(sdata->u.ap.beacon, new);

 if (old)
  kfree_rcu(old, rcu_head);

 return changed;
}
