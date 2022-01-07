
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct netlbl_lsm_secattr_catmap {scalar_t__ startbit; struct netlbl_lsm_secattr_catmap* next; } ;
typedef int gfp_t ;


 int GFP_ATOMIC ;
 scalar_t__ NETLBL_CATMAP_SIZE ;
 int netlbl_secattr_catmap_setbit (struct netlbl_lsm_secattr_catmap*,scalar_t__,int ) ;

int netlbl_secattr_catmap_setrng(struct netlbl_lsm_secattr_catmap *catmap,
     u32 start,
     u32 end,
     gfp_t flags)
{
 int ret_val = 0;
 struct netlbl_lsm_secattr_catmap *iter = catmap;
 u32 iter_max_spot;
 u32 spot;







 while (iter->next != ((void*)0) &&
        start >= (iter->startbit + NETLBL_CATMAP_SIZE))
  iter = iter->next;
 iter_max_spot = iter->startbit + NETLBL_CATMAP_SIZE;

 for (spot = start; spot <= end && ret_val == 0; spot++) {
  if (spot >= iter_max_spot && iter->next != ((void*)0)) {
   iter = iter->next;
   iter_max_spot = iter->startbit + NETLBL_CATMAP_SIZE;
  }
  ret_val = netlbl_secattr_catmap_setbit(iter, spot, GFP_ATOMIC);
 }

 return ret_val;
}
