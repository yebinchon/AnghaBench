
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int * cat; int lvl; } ;
struct TYPE_4__ {TYPE_1__ mls; } ;
struct netlbl_lsm_secattr {int flags; TYPE_2__ attr; } ;
struct cipso_v4_doi {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int NETLBL_SECATTR_MLS_CAT ;
 int NETLBL_SECATTR_MLS_LVL ;
 int cipso_v4_map_cat_rbm_ntoh (struct cipso_v4_doi const*,unsigned char const*,int,struct netlbl_lsm_secattr*) ;
 int cipso_v4_map_lvl_ntoh (struct cipso_v4_doi const*,unsigned char const,int *) ;
 int * netlbl_secattr_catmap_alloc (int ) ;
 int netlbl_secattr_catmap_free (int *) ;

__attribute__((used)) static int cipso_v4_parsetag_rbm(const struct cipso_v4_doi *doi_def,
     const unsigned char *tag,
     struct netlbl_lsm_secattr *secattr)
{
 int ret_val;
 u8 tag_len = tag[1];
 u32 level;

 ret_val = cipso_v4_map_lvl_ntoh(doi_def, tag[3], &level);
 if (ret_val != 0)
  return ret_val;
 secattr->attr.mls.lvl = level;
 secattr->flags |= NETLBL_SECATTR_MLS_LVL;

 if (tag_len > 4) {
  secattr->attr.mls.cat =
                         netlbl_secattr_catmap_alloc(GFP_ATOMIC);
  if (secattr->attr.mls.cat == ((void*)0))
   return -ENOMEM;

  ret_val = cipso_v4_map_cat_rbm_ntoh(doi_def,
          &tag[4],
          tag_len - 4,
          secattr);
  if (ret_val != 0) {
   netlbl_secattr_catmap_free(secattr->attr.mls.cat);
   return ret_val;
  }

  secattr->flags |= NETLBL_SECATTR_MLS_CAT;
 }

 return 0;
}
