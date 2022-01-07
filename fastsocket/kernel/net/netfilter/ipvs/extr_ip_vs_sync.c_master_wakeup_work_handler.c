
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 scalar_t__ IPVS_SYNC_WAKEUP_RATE ;
 int ip_vs_sync_lock ;
 scalar_t__ ip_vs_sync_queue_delay ;
 scalar_t__ ip_vs_sync_queue_len ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sync_master_thread ;
 int wake_up_process (int ) ;

__attribute__((used)) static void master_wakeup_work_handler(struct work_struct *work)
{
 spin_lock_bh(&ip_vs_sync_lock);
 if (ip_vs_sync_queue_len &&
     ip_vs_sync_queue_delay < IPVS_SYNC_WAKEUP_RATE) {
  ip_vs_sync_queue_delay = IPVS_SYNC_WAKEUP_RATE;
  wake_up_process(sync_master_thread);
 }
 spin_unlock_bh(&ip_vs_sync_lock);
}
