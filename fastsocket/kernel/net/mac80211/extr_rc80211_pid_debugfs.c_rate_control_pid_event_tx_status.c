
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union rc_pid_event_data {int tx_status; int flags; } ;
struct rc_pid_event_buffer {int dummy; } ;
struct ieee80211_tx_info {int flags; } ;


 int RC_PID_EVENT_TYPE_TX_STATUS ;
 int memcpy (int *,struct ieee80211_tx_info*,int) ;
 int rate_control_pid_event (struct rc_pid_event_buffer*,int ,union rc_pid_event_data*) ;

void rate_control_pid_event_tx_status(struct rc_pid_event_buffer *buf,
          struct ieee80211_tx_info *stat)
{
 union rc_pid_event_data evd;

 evd.flags = stat->flags;
 memcpy(&evd.tx_status, stat, sizeof(struct ieee80211_tx_info));
 rate_control_pid_event(buf, RC_PID_EVENT_TYPE_TX_STATUS, &evd);
}
