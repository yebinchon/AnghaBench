
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_rx_status {int flag; } ;


 int RX_FLAG_MACTIME_END ;
 int RX_FLAG_MACTIME_START ;
 int WARN_ON_ONCE (int) ;

__attribute__((used)) static inline bool
ieee80211_have_rx_timestamp(struct ieee80211_rx_status *status)
{
 WARN_ON_ONCE(status->flag & RX_FLAG_MACTIME_START &&
       status->flag & RX_FLAG_MACTIME_END);
 return status->flag & (RX_FLAG_MACTIME_START | RX_FLAG_MACTIME_END);
}
