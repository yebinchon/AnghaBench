
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int u32 ;
struct task_struct {int rule; } ;
struct audit_netlink_list {int pid; int q; } ;
struct audit_entry {int rule; } ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int audit_add_rule (struct task_struct*) ;
 struct task_struct* audit_data_to_entry (void*,size_t) ;
 int audit_del_rule (struct task_struct*) ;
 int audit_filter_mutex ;
 int audit_free_rule (struct task_struct*) ;
 int audit_list (int,int,int *) ;
 int audit_list_rules (int,int,int *) ;
 int audit_log_rule_change (int ,int ,int ,char*,int *,int) ;
 struct task_struct* audit_rule_to_entry (void*) ;
 int audit_send_list ;
 int kfree (struct audit_netlink_list*) ;
 struct audit_netlink_list* kmalloc (int,int ) ;
 struct task_struct* kthread_run (int ,struct audit_netlink_list*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skb_queue_head_init (int *) ;
 int skb_queue_purge (int *) ;

int audit_receive_filter(int type, int pid, int uid, int seq, void *data,
    size_t datasz, uid_t loginuid, u32 sessionid, u32 sid)
{
 struct task_struct *tsk;
 struct audit_netlink_list *dest;
 int err = 0;
 struct audit_entry *entry;

 switch (type) {
 case 129:
 case 128:






  dest = kmalloc(sizeof(struct audit_netlink_list), GFP_KERNEL);
  if (!dest)
   return -ENOMEM;
  dest->pid = pid;
  skb_queue_head_init(&dest->q);

  mutex_lock(&audit_filter_mutex);
  if (type == 129)
   audit_list(pid, seq, &dest->q);
  else
   audit_list_rules(pid, seq, &dest->q);
  mutex_unlock(&audit_filter_mutex);

  tsk = kthread_run(audit_send_list, dest, "audit_send_list");
  if (IS_ERR(tsk)) {
   skb_queue_purge(&dest->q);
   kfree(dest);
   err = PTR_ERR(tsk);
  }
  break;
 case 133:
 case 132:
  if (type == 133)
   entry = audit_rule_to_entry(data);
  else
   entry = audit_data_to_entry(data, datasz);
  if (IS_ERR(entry))
   return PTR_ERR(entry);

  err = audit_add_rule(entry);
  audit_log_rule_change(loginuid, sessionid, sid, "add rule",
          &entry->rule, !err);

  if (err)
   audit_free_rule(entry);
  break;
 case 131:
 case 130:
  if (type == 131)
   entry = audit_rule_to_entry(data);
  else
   entry = audit_data_to_entry(data, datasz);
  if (IS_ERR(entry))
   return PTR_ERR(entry);

  err = audit_del_rule(entry);
  audit_log_rule_change(loginuid, sessionid, sid, "remove rule",
          &entry->rule, !err);

  audit_free_rule(entry);
  break;
 default:
  return -EINVAL;
 }

 return err;
}
