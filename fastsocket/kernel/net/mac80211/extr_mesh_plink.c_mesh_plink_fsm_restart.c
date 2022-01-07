
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {scalar_t__ plink_retries; scalar_t__ reason; scalar_t__ plid; scalar_t__ llid; int plink_state; } ;


 int NL80211_PLINK_LISTEN ;

__attribute__((used)) static inline void mesh_plink_fsm_restart(struct sta_info *sta)
{
 sta->plink_state = NL80211_PLINK_LISTEN;
 sta->llid = sta->plid = sta->reason = 0;
 sta->plink_retries = 0;
}
