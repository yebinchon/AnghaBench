
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* keys; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct ieee80211_local {int tx_status_drop; int rx_handlers_fragments; int rx_expand_skb_head2; int rx_expand_skb_head; int tx_expand_skb_head_cloned; int tx_expand_skb_head; int rx_handlers_drop_short; int rx_handlers_drop_defrag; int rx_handlers_drop_nullfunc; int rx_handlers_queued; int rx_handlers_drop; int tx_handlers_drop_unauth_port; int tx_handlers_drop_not_assoc; int tx_handlers_drop_wep; int tx_handlers_drop_fragment; int tx_handlers_drop_unencrypted; int tx_handlers_queued; int tx_handlers_drop; int dot11TransmittedFrameCount; int dot11MulticastReceivedFrameCount; int dot11ReceivedFragmentCount; int dot11FrameDuplicateCount; int dot11MultipleRetryCount; int dot11RetryCount; int dot11FailedCount; int dot11MulticastTransmittedFrameCount; int dot11TransmittedFragmentCount; TYPE_3__ debugfs; TYPE_2__ hw; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {struct dentry* debugfsdir; } ;


 int DEBUGFS_ADD (int ) ;
 int DEBUGFS_ADD_MODE (int ,int) ;
 int DEBUGFS_DEVSTATS_ADD (int ) ;
 int DEBUGFS_STATS_ADD (int ,int ) ;
 void* debugfs_create_dir (char*,struct dentry*) ;
 int dot11ACKFailureCount ;
 int dot11FCSErrorCount ;
 int dot11RTSFailureCount ;
 int dot11RTSSuccessCount ;
 int failed_count ;
 int frame_duplicate_count ;
 int hwflags ;
 int multicast_received_frame_count ;
 int multicast_transmitted_frame_count ;
 int multiple_retry_count ;
 int power ;
 int queues ;
 int received_fragment_count ;
 int reset ;
 int retry_count ;
 int rx_expand_skb_head ;
 int rx_expand_skb_head2 ;
 int rx_handlers_drop ;
 int rx_handlers_drop_defrag ;
 int rx_handlers_drop_nullfunc ;
 int rx_handlers_drop_short ;
 int rx_handlers_fragments ;
 int rx_handlers_queued ;
 int total_ps_buffered ;
 int transmitted_fragment_count ;
 int transmitted_frame_count ;
 int tx_expand_skb_head ;
 int tx_expand_skb_head_cloned ;
 int tx_handlers_drop ;
 int tx_handlers_drop_fragment ;
 int tx_handlers_drop_not_assoc ;
 int tx_handlers_drop_unauth_port ;
 int tx_handlers_drop_unencrypted ;
 int tx_handlers_drop_wep ;
 int tx_handlers_queued ;
 int tx_status_drop ;
 int user_power ;
 int wep_iv ;

void debugfs_hw_add(struct ieee80211_local *local)
{
 struct dentry *phyd = local->hw.wiphy->debugfsdir;
 struct dentry *statsd;

 if (!phyd)
  return;

 local->debugfs.keys = debugfs_create_dir("keys", phyd);

 DEBUGFS_ADD(total_ps_buffered);
 DEBUGFS_ADD(wep_iv);
 DEBUGFS_ADD(queues);



 DEBUGFS_ADD(hwflags);
 DEBUGFS_ADD(user_power);
 DEBUGFS_ADD(power);

 statsd = debugfs_create_dir("statistics", phyd);


 if (!statsd)
  return;

 DEBUGFS_STATS_ADD(transmitted_fragment_count,
  local->dot11TransmittedFragmentCount);
 DEBUGFS_STATS_ADD(multicast_transmitted_frame_count,
  local->dot11MulticastTransmittedFrameCount);
 DEBUGFS_STATS_ADD(failed_count, local->dot11FailedCount);
 DEBUGFS_STATS_ADD(retry_count, local->dot11RetryCount);
 DEBUGFS_STATS_ADD(multiple_retry_count,
  local->dot11MultipleRetryCount);
 DEBUGFS_STATS_ADD(frame_duplicate_count,
  local->dot11FrameDuplicateCount);
 DEBUGFS_STATS_ADD(received_fragment_count,
  local->dot11ReceivedFragmentCount);
 DEBUGFS_STATS_ADD(multicast_received_frame_count,
  local->dot11MulticastReceivedFrameCount);
 DEBUGFS_STATS_ADD(transmitted_frame_count,
  local->dot11TransmittedFrameCount);
 DEBUGFS_DEVSTATS_ADD(dot11ACKFailureCount);
 DEBUGFS_DEVSTATS_ADD(dot11RTSFailureCount);
 DEBUGFS_DEVSTATS_ADD(dot11FCSErrorCount);
 DEBUGFS_DEVSTATS_ADD(dot11RTSSuccessCount);
}
