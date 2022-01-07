
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mesh_preq_queue {int list; int flags; int dst; } ;
struct mesh_path {int flags; int state_lock; int dst; struct ieee80211_sub_if_data* sdata; } ;
struct TYPE_5__ {int list; } ;
struct ieee80211_if_mesh {scalar_t__ preq_queue_len; scalar_t__ last_preq; int mesh_path_timer; int mesh_preq_queue_lock; TYPE_2__ preq_queue; } ;
struct TYPE_4__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {int work; TYPE_3__* local; TYPE_1__ u; } ;
struct TYPE_6__ {int hw; } ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;
 scalar_t__ MAX_PREQ_QUEUE_LEN ;
 int MESH_PATH_REQ_QUEUED ;
 int ieee80211_queue_work (int *,int *) ;
 scalar_t__ jiffies ;
 int kfree (struct mesh_preq_queue*) ;
 struct mesh_preq_queue* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int ,int ) ;
 int mhwmp_dbg (struct ieee80211_sub_if_data*,char*) ;
 scalar_t__ min_preq_int_jiff (struct ieee80211_sub_if_data*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ printk_ratelimit () ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static void mesh_queue_preq(struct mesh_path *mpath, u8 flags)
{
 struct ieee80211_sub_if_data *sdata = mpath->sdata;
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
 struct mesh_preq_queue *preq_node;

 preq_node = kmalloc(sizeof(struct mesh_preq_queue), GFP_ATOMIC);
 if (!preq_node) {
  mhwmp_dbg(sdata, "could not allocate PREQ node\n");
  return;
 }

 spin_lock_bh(&ifmsh->mesh_preq_queue_lock);
 if (ifmsh->preq_queue_len == MAX_PREQ_QUEUE_LEN) {
  spin_unlock_bh(&ifmsh->mesh_preq_queue_lock);
  kfree(preq_node);
  if (printk_ratelimit())
   mhwmp_dbg(sdata, "PREQ node queue full\n");
  return;
 }

 spin_lock(&mpath->state_lock);
 if (mpath->flags & MESH_PATH_REQ_QUEUED) {
  spin_unlock(&mpath->state_lock);
  spin_unlock_bh(&ifmsh->mesh_preq_queue_lock);
  kfree(preq_node);
  return;
 }

 memcpy(preq_node->dst, mpath->dst, ETH_ALEN);
 preq_node->flags = flags;

 mpath->flags |= MESH_PATH_REQ_QUEUED;
 spin_unlock(&mpath->state_lock);

 list_add_tail(&preq_node->list, &ifmsh->preq_queue.list);
 ++ifmsh->preq_queue_len;
 spin_unlock_bh(&ifmsh->mesh_preq_queue_lock);

 if (time_after(jiffies, ifmsh->last_preq + min_preq_int_jiff(sdata)))
  ieee80211_queue_work(&sdata->local->hw, &sdata->work);

 else if (time_before(jiffies, ifmsh->last_preq)) {



  ifmsh->last_preq = jiffies - min_preq_int_jiff(sdata) - 1;
  ieee80211_queue_work(&sdata->local->hw, &sdata->work);
 } else
  mod_timer(&ifmsh->mesh_path_timer, ifmsh->last_preq +
      min_preq_int_jiff(sdata));
}
