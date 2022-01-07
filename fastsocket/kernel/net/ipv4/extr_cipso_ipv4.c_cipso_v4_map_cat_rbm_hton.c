
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int cat; } ;
struct TYPE_10__ {TYPE_4__ mls; } ;
struct netlbl_lsm_secattr {TYPE_5__ attr; } ;
struct TYPE_8__ {TYPE_2__* std; } ;
struct cipso_v4_doi {int type; TYPE_3__ map; } ;
struct TYPE_6__ {int local_size; int* local; } ;
struct TYPE_7__ {TYPE_1__ cat; } ;


 int CIPSO_V4_INV_CAT ;


 int ENOSPC ;
 int EPERM ;
 int cipso_v4_bitmap_setbit (unsigned char*,int,int) ;
 int netlbl_secattr_catmap_walk (int ,int) ;

__attribute__((used)) static int cipso_v4_map_cat_rbm_hton(const struct cipso_v4_doi *doi_def,
         const struct netlbl_lsm_secattr *secattr,
         unsigned char *net_cat,
         u32 net_cat_len)
{
 int host_spot = -1;
 u32 net_spot = CIPSO_V4_INV_CAT;
 u32 net_spot_max = 0;
 u32 net_clen_bits = net_cat_len * 8;
 u32 host_cat_size = 0;
 u32 *host_cat_array = ((void*)0);

 if (doi_def->type == 128) {
  host_cat_size = doi_def->map.std->cat.local_size;
  host_cat_array = doi_def->map.std->cat.local;
 }

 for (;;) {
  host_spot = netlbl_secattr_catmap_walk(secattr->attr.mls.cat,
             host_spot + 1);
  if (host_spot < 0)
   break;

  switch (doi_def->type) {
  case 129:
   net_spot = host_spot;
   break;
  case 128:
   if (host_spot >= host_cat_size)
    return -EPERM;
   net_spot = host_cat_array[host_spot];
   if (net_spot >= CIPSO_V4_INV_CAT)
    return -EPERM;
   break;
  }
  if (net_spot >= net_clen_bits)
   return -ENOSPC;
  cipso_v4_bitmap_setbit(net_cat, net_spot, 1);

  if (net_spot > net_spot_max)
   net_spot_max = net_spot;
 }

 if (++net_spot_max % 8)
  return net_spot_max / 8 + 1;
 return net_spot_max / 8;
}
