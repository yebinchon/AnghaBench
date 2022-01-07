
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rb_node {int dummy; } ;
struct o2net_msg_handler {int nh_unregister_item; int nh_node; int nh_kref; scalar_t__ nh_key; scalar_t__ nh_max_len; scalar_t__ nh_msg_type; int * nh_post_func; void* nh_func_data; int * nh_func; } ;
struct list_head {int dummy; } ;
typedef int o2net_post_msg_handler_func ;
typedef int o2net_msg_handler_func ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int ML_TCP ;
 scalar_t__ O2NET_MAX_PAYLOAD_BYTES ;
 int kfree (struct o2net_msg_handler*) ;
 int kref_init (int *) ;
 struct o2net_msg_handler* kzalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int mlog (int ,char*,scalar_t__,...) ;
 int mlog_bug_on_msg (int ,char*,scalar_t__,scalar_t__) ;
 int o2net_handler_lock ;
 int o2net_handler_tree ;
 int * o2net_handler_tree_lookup (scalar_t__,scalar_t__,struct rb_node***,struct rb_node**) ;
 int rb_insert_color (int *,int *) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int o2net_register_handler(u32 msg_type, u32 key, u32 max_len,
      o2net_msg_handler_func *func, void *data,
      o2net_post_msg_handler_func *post_func,
      struct list_head *unreg_list)
{
 struct o2net_msg_handler *nmh = ((void*)0);
 struct rb_node **p, *parent;
 int ret = 0;

 if (max_len > O2NET_MAX_PAYLOAD_BYTES) {
  mlog(0, "max_len for message handler out of range: %u\n",
   max_len);
  ret = -EINVAL;
  goto out;
 }

 if (!msg_type) {
  mlog(0, "no message type provided: %u, %p\n", msg_type, func);
  ret = -EINVAL;
  goto out;

 }
 if (!func) {
  mlog(0, "no message handler provided: %u, %p\n",
         msg_type, func);
  ret = -EINVAL;
  goto out;
 }

        nmh = kzalloc(sizeof(struct o2net_msg_handler), GFP_NOFS);
 if (nmh == ((void*)0)) {
  ret = -ENOMEM;
  goto out;
 }

 nmh->nh_func = func;
 nmh->nh_func_data = data;
 nmh->nh_post_func = post_func;
 nmh->nh_msg_type = msg_type;
 nmh->nh_max_len = max_len;
 nmh->nh_key = key;


 kref_init(&nmh->nh_kref);
 INIT_LIST_HEAD(&nmh->nh_unregister_item);

 write_lock(&o2net_handler_lock);
 if (o2net_handler_tree_lookup(msg_type, key, &p, &parent))
  ret = -EEXIST;
 else {
         rb_link_node(&nmh->nh_node, parent, p);
  rb_insert_color(&nmh->nh_node, &o2net_handler_tree);
  list_add_tail(&nmh->nh_unregister_item, unreg_list);

  mlog(ML_TCP, "registered handler func %p type %u key %08x\n",
       func, msg_type, key);

  mlog_bug_on_msg(o2net_handler_tree_lookup(msg_type, key, &p,
         &parent) == ((void*)0),
           "couldn't find handler we *just* registerd "
    "for type %u key %08x\n", msg_type, key);
 }
 write_unlock(&o2net_handler_lock);
 if (ret)
  goto out;

out:
 if (ret)
  kfree(nmh);

 return ret;
}
