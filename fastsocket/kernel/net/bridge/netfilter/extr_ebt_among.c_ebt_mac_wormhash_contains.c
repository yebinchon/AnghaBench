
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ebt_mac_wormhash_tuple {scalar_t__* cmp; scalar_t__ ip; } ;
struct ebt_mac_wormhash {int* table; struct ebt_mac_wormhash_tuple* pool; } ;
typedef scalar_t__ __be32 ;


 int memcpy (char*,char const*,int) ;

__attribute__((used)) static bool ebt_mac_wormhash_contains(const struct ebt_mac_wormhash *wh,
          const char *mac, __be32 ip)
{





 const struct ebt_mac_wormhash_tuple *p;
 int start, limit, i;
 uint32_t cmp[2] = { 0, 0 };
 int key = ((const unsigned char *)mac)[5];

 memcpy(((char *) cmp) + 2, mac, 6);
 start = wh->table[key];
 limit = wh->table[key + 1];
 if (ip) {
  for (i = start; i < limit; i++) {
   p = &wh->pool[i];
   if (cmp[1] == p->cmp[1] && cmp[0] == p->cmp[0])
    if (p->ip == 0 || p->ip == ip)
     return 1;
  }
 } else {
  for (i = start; i < limit; i++) {
   p = &wh->pool[i];
   if (cmp[1] == p->cmp[1] && cmp[0] == p->cmp[0])
    if (p->ip == 0)
     return 1;
  }
 }
 return 0;
}
