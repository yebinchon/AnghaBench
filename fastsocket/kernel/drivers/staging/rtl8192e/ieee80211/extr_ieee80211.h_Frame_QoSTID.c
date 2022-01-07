
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ieee80211_hdr_3addr {int frame_ctl; } ;
struct TYPE_3__ {int tid; } ;
struct TYPE_4__ {TYPE_1__ field; } ;
typedef TYPE_2__ frameqos ;


 int IEEE80211_FCTL_FROMDS ;
 int IEEE80211_FCTL_TODS ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u8 Frame_QoSTID(u8* buf)
{
 struct ieee80211_hdr_3addr *hdr;
 u16 fc;
 hdr = (struct ieee80211_hdr_3addr *)buf;
 fc = le16_to_cpu(hdr->frame_ctl);
 return (u8)((frameqos*)(buf + (((fc & IEEE80211_FCTL_TODS)&&(fc & IEEE80211_FCTL_FROMDS))? 30 : 24)))->field.tid;
}
