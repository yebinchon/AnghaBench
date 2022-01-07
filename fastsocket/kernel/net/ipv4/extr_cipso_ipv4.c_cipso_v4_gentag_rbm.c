
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int lvl; } ;
struct TYPE_4__ {TYPE_1__ mls; } ;
struct netlbl_lsm_secattr {int flags; TYPE_2__ attr; } ;
struct cipso_v4_doi {int dummy; } ;


 unsigned char CIPSO_V4_TAG_RBITMAP ;
 int EPERM ;
 int NETLBL_SECATTR_MLS_CAT ;
 int NETLBL_SECATTR_MLS_LVL ;
 int cipso_v4_map_cat_rbm_hton (struct cipso_v4_doi const*,struct netlbl_lsm_secattr const*,unsigned char*,int) ;
 int cipso_v4_map_lvl_hton (struct cipso_v4_doi const*,int ,int*) ;
 scalar_t__ cipso_v4_rbm_optfmt ;

__attribute__((used)) static int cipso_v4_gentag_rbm(const struct cipso_v4_doi *doi_def,
          const struct netlbl_lsm_secattr *secattr,
          unsigned char *buffer,
          u32 buffer_len)
{
 int ret_val;
 u32 tag_len;
 u32 level;

 if ((secattr->flags & NETLBL_SECATTR_MLS_LVL) == 0)
  return -EPERM;

 ret_val = cipso_v4_map_lvl_hton(doi_def,
     secattr->attr.mls.lvl,
     &level);
 if (ret_val != 0)
  return ret_val;

 if (secattr->flags & NETLBL_SECATTR_MLS_CAT) {
  ret_val = cipso_v4_map_cat_rbm_hton(doi_def,
          secattr,
          &buffer[4],
          buffer_len - 4);
  if (ret_val < 0)
   return ret_val;




  if (cipso_v4_rbm_optfmt && ret_val > 0 && ret_val <= 10)
   tag_len = 14;
  else
   tag_len = 4 + ret_val;
 } else
  tag_len = 4;

 buffer[0] = CIPSO_V4_TAG_RBITMAP;
 buffer[1] = tag_len;
 buffer[3] = level;

 return tag_len;
}
