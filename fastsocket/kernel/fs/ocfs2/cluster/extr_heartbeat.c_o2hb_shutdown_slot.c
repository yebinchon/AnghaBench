
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {int dummy; } ;
struct o2hb_node_event {int hn_item; } ;
struct o2hb_disk_slot {size_t ds_node_num; int ds_live_item; } ;


 int LIST_HEAD_INIT (int ) ;
 int ML_HEARTBEAT ;
 int O2HB_NODE_DOWN_CB ;
 int clear_bit (size_t,int ) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int mlog (int ,char*,size_t) ;
 int o2hb_live_lock ;
 int o2hb_live_node_bitmap ;
 int * o2hb_live_slots ;
 int o2hb_queue_node_event (struct o2hb_node_event*,int ,struct o2nm_node*,size_t) ;
 int o2hb_run_event_list (struct o2hb_node_event*) ;
 struct o2nm_node* o2nm_get_node_by_num (size_t) ;
 int o2nm_node_put (struct o2nm_node*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void o2hb_shutdown_slot(struct o2hb_disk_slot *slot)
{
 struct o2hb_node_event event =
  { .hn_item = LIST_HEAD_INIT(event.hn_item), };
 struct o2nm_node *node;

 node = o2nm_get_node_by_num(slot->ds_node_num);
 if (!node)
  return;

 spin_lock(&o2hb_live_lock);
 if (!list_empty(&slot->ds_live_item)) {
  mlog(ML_HEARTBEAT, "Shutdown, node %d leaves region\n",
       slot->ds_node_num);

  list_del_init(&slot->ds_live_item);

  if (list_empty(&o2hb_live_slots[slot->ds_node_num])) {
   clear_bit(slot->ds_node_num, o2hb_live_node_bitmap);

   o2hb_queue_node_event(&event, O2HB_NODE_DOWN_CB, node,
           slot->ds_node_num);
  }
 }
 spin_unlock(&o2hb_live_lock);

 o2hb_run_event_list(&event);

 o2nm_node_put(node);
}
