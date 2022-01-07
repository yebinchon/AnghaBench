
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_vs_sync_mesg {int dummy; } ;
struct ip_vs_sync_buff {TYPE_1__* mesg; } ;
struct TYPE_2__ {int size; } ;


 int IP_VS_STATE_MASTER ;
 struct ip_vs_sync_buff* curr_sb ;
 int curr_sb_lock ;
 int ip_vs_sync_buff_release (struct ip_vs_sync_buff*) ;
 int ip_vs_sync_state ;
 int sb_queue_tail (struct ip_vs_sync_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sysctl_ip_vs_sync_ver ;

void ip_vs_sync_switch_mode(int mode) {
 struct ip_vs_sync_buff *sb;

 spin_lock_bh(&curr_sb_lock);
 if (!(ip_vs_sync_state & IP_VS_STATE_MASTER))
  goto unlock;
 sb = curr_sb;
 if (mode == sysctl_ip_vs_sync_ver || !sb)
  goto unlock;


 if (sb->mesg->size <= sizeof(struct ip_vs_sync_mesg)) {
  ip_vs_sync_buff_release(sb);
  curr_sb = ((void*)0);
 } else
  sb_queue_tail(curr_sb);

unlock:
 spin_unlock_bh(&curr_sb_lock);
}
