
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int iv32; int iv16; } ;
struct TYPE_6__ {TYPE_1__ tx; int txlock; } ;
struct TYPE_7__ {TYPE_2__ tkip; } ;
struct TYPE_8__ {int keyidx; } ;
struct ieee80211_key {TYPE_3__ u; TYPE_4__ conf; } ;


 int lockdep_assert_held (int *) ;
 int put_unaligned_le32 (int ,int *) ;
 int * write_tkip_iv (int *,int ) ;

u8 *ieee80211_tkip_add_iv(u8 *pos, struct ieee80211_key *key)
{
 lockdep_assert_held(&key->u.tkip.txlock);

 pos = write_tkip_iv(pos, key->u.tkip.tx.iv16);
 *pos++ = (key->conf.keyidx << 6) | (1 << 5) ;
 put_unaligned_le32(key->u.tkip.tx.iv32, pos);
 return pos + 4;
}
