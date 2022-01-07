
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mesh_table {int hash_mask; int hash_rnd; } ;
struct ieee80211_sub_if_data {TYPE_1__* dev; } ;
struct TYPE_2__ {int ifindex; } ;


 int jhash_2words (int,int ,int ) ;

__attribute__((used)) static u32 mesh_table_hash(const u8 *addr, struct ieee80211_sub_if_data *sdata,
      struct mesh_table *tbl)
{

 return jhash_2words(*(u32 *)(addr+2), sdata->dev->ifindex,
       tbl->hash_rnd) & tbl->hash_mask;
}
