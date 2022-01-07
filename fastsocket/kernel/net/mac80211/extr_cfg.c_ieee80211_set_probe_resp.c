
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct probe_resp {size_t len; int data; } ;
struct TYPE_3__ {int probe_resp; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree_rcu (struct probe_resp*,int ) ;
 struct probe_resp* kzalloc (int,int ) ;
 int memcpy (int ,int const*,size_t) ;
 int rcu_assign_pointer (int ,struct probe_resp*) ;
 int rcu_head ;
 struct probe_resp* rtnl_dereference (int ) ;

__attribute__((used)) static int ieee80211_set_probe_resp(struct ieee80211_sub_if_data *sdata,
        const u8 *resp, size_t resp_len)
{
 struct probe_resp *new, *old;

 if (!resp || !resp_len)
  return 1;

 old = rtnl_dereference(sdata->u.ap.probe_resp);

 new = kzalloc(sizeof(struct probe_resp) + resp_len, GFP_KERNEL);
 if (!new)
  return -ENOMEM;

 new->len = resp_len;
 memcpy(new->data, resp, resp_len);

 rcu_assign_pointer(sdata->u.ap.probe_resp, new);
 if (old)
  kfree_rcu(old, rcu_head);

 return 0;
}
