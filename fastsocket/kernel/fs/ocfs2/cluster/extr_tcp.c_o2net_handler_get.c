
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct o2net_msg_handler {int nh_kref; } ;


 int kref_get (int *) ;
 int o2net_handler_lock ;
 struct o2net_msg_handler* o2net_handler_tree_lookup (int ,int ,int *,int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static struct o2net_msg_handler *o2net_handler_get(u32 msg_type, u32 key)
{
 struct o2net_msg_handler *nmh;

 read_lock(&o2net_handler_lock);
 nmh = o2net_handler_tree_lookup(msg_type, key, ((void*)0), ((void*)0));
 if (nmh)
  kref_get(&nmh->nh_kref);
 read_unlock(&o2net_handler_lock);

 return nmh;
}
