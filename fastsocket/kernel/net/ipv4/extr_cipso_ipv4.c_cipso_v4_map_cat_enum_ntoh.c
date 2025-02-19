
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int cat; } ;
struct TYPE_4__ {TYPE_1__ mls; } ;
struct netlbl_lsm_secattr {TYPE_2__ attr; } ;
struct cipso_v4_doi {int dummy; } ;


 int GFP_ATOMIC ;
 int get_unaligned_be16 (unsigned char const*) ;
 int netlbl_secattr_catmap_setbit (int ,int ,int ) ;

__attribute__((used)) static int cipso_v4_map_cat_enum_ntoh(const struct cipso_v4_doi *doi_def,
          const unsigned char *net_cat,
          u32 net_cat_len,
          struct netlbl_lsm_secattr *secattr)
{
 int ret_val;
 u32 iter;

 for (iter = 0; iter < net_cat_len; iter += 2) {
  ret_val = netlbl_secattr_catmap_setbit(secattr->attr.mls.cat,
    get_unaligned_be16(&net_cat[iter]),
    GFP_ATOMIC);
  if (ret_val != 0)
   return ret_val;
 }

 return 0;
}
