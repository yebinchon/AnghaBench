
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int IEEE80211_BASIC_RATE_MASK ;





__attribute__((used)) static inline int ieee80211_is_cck_rate(u8 rate)
{
        switch (rate & ~IEEE80211_BASIC_RATE_MASK) {
        case 130:
        case 129:
        case 128:
        case 131:
                return 1;
        }
        return 0;
}
