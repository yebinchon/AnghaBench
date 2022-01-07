
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u8 ;



__attribute__((used)) static bool ieee80211_id_in_list(const u8 *ids, int n_ids, u8 id)
{
 int i;

 for (i = 0; i < n_ids; i++)
  if (ids[i] == id)
   return 1;
 return 0;
}
