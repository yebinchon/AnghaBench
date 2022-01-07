
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_ieee80211_hdr {int frame_ctl; } ;
struct ieee80211_hdr_4addr {int * payload; } ;
struct ieee80211_hdr_3addr {int * payload; } ;
struct ieee80211_hdr_2addr {int * payload; } ;
struct ieee80211_hdr_1addr {int * payload; } ;






 int ieee80211_get_hdrlen (int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u8 *ieee80211_get_payload(struct rtl_ieee80211_hdr *hdr)
{
        switch (ieee80211_get_hdrlen(le16_to_cpu(hdr->frame_ctl))) {
        case 131:
                return ((struct ieee80211_hdr_1addr *)hdr)->payload;
        case 130:
                return ((struct ieee80211_hdr_2addr *)hdr)->payload;
        case 129:
                return ((struct ieee80211_hdr_3addr *)hdr)->payload;
        case 128:
                return ((struct ieee80211_hdr_4addr *)hdr)->payload;
        }
        return ((void*)0);
}
