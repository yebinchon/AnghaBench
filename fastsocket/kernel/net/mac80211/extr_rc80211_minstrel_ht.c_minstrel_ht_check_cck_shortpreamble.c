
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct minstrel_priv {int dummy; } ;
struct minstrel_ht_sta {int cck_supported_short; TYPE_1__* groups; } ;
struct TYPE_2__ {int supported; } ;


 size_t MINSTREL_CCK_GROUP ;

__attribute__((used)) static void
minstrel_ht_check_cck_shortpreamble(struct minstrel_priv *mp,
        struct minstrel_ht_sta *mi, bool val)
{
 u8 supported = mi->groups[MINSTREL_CCK_GROUP].supported;

 if (!supported || !mi->cck_supported_short)
  return;

 if (supported & (mi->cck_supported_short << (val * 4)))
  return;

 supported ^= mi->cck_supported_short | (mi->cck_supported_short << 4);
 mi->groups[MINSTREL_CCK_GROUP].supported = supported;
}
