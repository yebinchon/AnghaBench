
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sta_info {int sta; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
typedef enum ieee80211_frame_release_type { ____Placeholder_ieee80211_frame_release_type } ieee80211_frame_release_type ;
struct TYPE_2__ {int (* release_buffered_frames ) (int *,int *,int ,int,int,int) ;} ;


 int stub1 (int *,int *,int ,int,int,int) ;
 int trace_drv_release_buffered_frames (struct ieee80211_local*,int *,int ,int,int,int) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

__attribute__((used)) static inline void
drv_release_buffered_frames(struct ieee80211_local *local,
       struct sta_info *sta, u16 tids, int num_frames,
       enum ieee80211_frame_release_type reason,
       bool more_data)
{
 trace_drv_release_buffered_frames(local, &sta->sta, tids, num_frames,
       reason, more_data);
 if (local->ops->release_buffered_frames)
  local->ops->release_buffered_frames(&local->hw, &sta->sta, tids,
          num_frames, reason,
          more_data);
 trace_drv_return_void(local);
}
