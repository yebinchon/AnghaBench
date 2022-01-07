
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_3__ {int cat; } ;
struct TYPE_4__ {TYPE_1__ mls; } ;
struct netlbl_lsm_secattr {TYPE_2__ attr; } ;
struct cipso_v4_doi {int dummy; } ;
typedef int __be16 ;


 scalar_t__ CIPSO_V4_HDR_LEN ;
 scalar_t__ CIPSO_V4_OPT_LEN_MAX ;
 scalar_t__ CIPSO_V4_TAG_RNG_BLEN ;
 int CIPSO_V4_TAG_RNG_CAT_MAX ;
 int EFAULT ;
 int ENOSPC ;
 int htons (int) ;
 int netlbl_secattr_catmap_walk (int ,int) ;
 int netlbl_secattr_catmap_walk_rng (int ,int) ;

__attribute__((used)) static int cipso_v4_map_cat_rng_hton(const struct cipso_v4_doi *doi_def,
         const struct netlbl_lsm_secattr *secattr,
         unsigned char *net_cat,
         u32 net_cat_len)
{
 int iter = -1;
 u16 array[CIPSO_V4_TAG_RNG_CAT_MAX * 2];
 u32 array_cnt = 0;
 u32 cat_size = 0;


 if (net_cat_len >
     (CIPSO_V4_OPT_LEN_MAX - CIPSO_V4_HDR_LEN - CIPSO_V4_TAG_RNG_BLEN))
  return -ENOSPC;

 for (;;) {
  iter = netlbl_secattr_catmap_walk(secattr->attr.mls.cat,
        iter + 1);
  if (iter < 0)
   break;
  cat_size += (iter == 0 ? 0 : sizeof(u16));
  if (cat_size > net_cat_len)
   return -ENOSPC;
  array[array_cnt++] = iter;

  iter = netlbl_secattr_catmap_walk_rng(secattr->attr.mls.cat,
            iter);
  if (iter < 0)
   return -EFAULT;
  cat_size += sizeof(u16);
  if (cat_size > net_cat_len)
   return -ENOSPC;
  array[array_cnt++] = iter;
 }

 for (iter = 0; array_cnt > 0;) {
  *((__be16 *)&net_cat[iter]) = htons(array[--array_cnt]);
  iter += 2;
  array_cnt--;
  if (array[array_cnt] != 0) {
   *((__be16 *)&net_cat[iter]) = htons(array[array_cnt]);
   iter += 2;
  }
 }

 return cat_size;
}
