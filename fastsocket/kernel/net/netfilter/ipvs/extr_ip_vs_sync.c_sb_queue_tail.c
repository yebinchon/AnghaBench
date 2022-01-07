
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_sync_buff {int list; } ;


 int IPVS_SYNC_SEND_DELAY ;
 scalar_t__ IPVS_SYNC_WAKEUP_RATE ;
 int IP_VS_STATE_MASTER ;
 int ip_vs_master_wakeup_work ;
 int ip_vs_sync_buff_release (struct ip_vs_sync_buff*) ;
 int ip_vs_sync_lock ;
 int ip_vs_sync_queue ;
 scalar_t__ ip_vs_sync_queue_delay ;
 scalar_t__ ip_vs_sync_queue_len ;
 int ip_vs_sync_state ;
 int list_add_tail (int *,int *) ;
 int max (int ,int) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sync_master_thread ;
 scalar_t__ sysctl_sync_qlen_max () ;
 int wake_up_process (int ) ;

__attribute__((used)) static inline void sb_queue_tail(struct ip_vs_sync_buff *sb)
{
 spin_lock(&ip_vs_sync_lock);
 if (ip_vs_sync_state & IP_VS_STATE_MASTER &&
     ip_vs_sync_queue_len < sysctl_sync_qlen_max()) {
  if (!ip_vs_sync_queue_len)
   schedule_delayed_work(&ip_vs_master_wakeup_work,
           max(IPVS_SYNC_SEND_DELAY, 1));
  ip_vs_sync_queue_len++;
  list_add_tail(&sb->list, &ip_vs_sync_queue);
  if ((++ip_vs_sync_queue_delay) == IPVS_SYNC_WAKEUP_RATE)
   wake_up_process(sync_master_thread);
 } else
  ip_vs_sync_buff_release(sb);
 spin_unlock(&ip_vs_sync_lock);
}
