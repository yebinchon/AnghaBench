
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct sk_buff {TYPE_1__* dev; } ;
struct cipso_v4_doi {unsigned char* tags; } ;
struct TYPE_2__ {int flags; } ;


 unsigned char CIPSO_V4_HDR_LEN ;

 int CIPSO_V4_TAG_ENUM_BLEN ;
 unsigned char CIPSO_V4_TAG_INVALID ;

 int CIPSO_V4_TAG_LOC_BLEN ;
 size_t CIPSO_V4_TAG_MAXCNT ;


 int CIPSO_V4_TAG_RBM_BLEN ;
 int CIPSO_V4_TAG_RNG_BLEN ;
 int IFF_LOOPBACK ;
 struct cipso_v4_doi* cipso_v4_doi_search (int ) ;
 int cipso_v4_map_cat_enum_valid (struct cipso_v4_doi*,unsigned char*,int) ;
 int cipso_v4_map_cat_rbm_valid (struct cipso_v4_doi*,unsigned char*,int) ;
 int cipso_v4_map_cat_rng_valid (struct cipso_v4_doi*,unsigned char*,int) ;
 int cipso_v4_map_lvl_valid (struct cipso_v4_doi*,unsigned char) ;
 int cipso_v4_rbm_strictvalid ;
 int get_unaligned_be32 (unsigned char*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int cipso_v4_validate(const struct sk_buff *skb, unsigned char **option)
{
 unsigned char *opt = *option;
 unsigned char *tag;
 unsigned char opt_iter;
 unsigned char err_offset = 0;
 u8 opt_len;
 u8 tag_len;
 struct cipso_v4_doi *doi_def = ((void*)0);
 u32 tag_iter;


 opt_len = opt[1];
 if (opt_len < 8) {
  err_offset = 1;
  goto validate_return;
 }

 rcu_read_lock();
 doi_def = cipso_v4_doi_search(get_unaligned_be32(&opt[2]));
 if (doi_def == ((void*)0)) {
  err_offset = 2;
  goto validate_return_locked;
 }

 opt_iter = CIPSO_V4_HDR_LEN;
 tag = opt + opt_iter;
 while (opt_iter < opt_len) {
  for (tag_iter = 0; doi_def->tags[tag_iter] != tag[0];)
   if (doi_def->tags[tag_iter] == CIPSO_V4_TAG_INVALID ||
       ++tag_iter == CIPSO_V4_TAG_MAXCNT) {
    err_offset = opt_iter;
    goto validate_return_locked;
   }

  tag_len = tag[1];
  if (tag_len > (opt_len - opt_iter)) {
   err_offset = opt_iter + 1;
   goto validate_return_locked;
  }

  switch (tag[0]) {
  case 128:
   if (tag_len < CIPSO_V4_TAG_RBM_BLEN) {
    err_offset = opt_iter + 1;
    goto validate_return_locked;
   }
   if (cipso_v4_rbm_strictvalid) {
    if (cipso_v4_map_lvl_valid(doi_def,
          tag[3]) < 0) {
     err_offset = opt_iter + 3;
     goto validate_return_locked;
    }
    if (tag_len > CIPSO_V4_TAG_RBM_BLEN &&
        cipso_v4_map_cat_rbm_valid(doi_def,
           &tag[4],
           tag_len - 4) < 0) {
     err_offset = opt_iter + 4;
     goto validate_return_locked;
    }
   }
   break;
  case 131:
   if (tag_len < CIPSO_V4_TAG_ENUM_BLEN) {
    err_offset = opt_iter + 1;
    goto validate_return_locked;
   }

   if (cipso_v4_map_lvl_valid(doi_def,
         tag[3]) < 0) {
    err_offset = opt_iter + 3;
    goto validate_return_locked;
   }
   if (tag_len > CIPSO_V4_TAG_ENUM_BLEN &&
       cipso_v4_map_cat_enum_valid(doi_def,
       &tag[4],
       tag_len - 4) < 0) {
    err_offset = opt_iter + 4;
    goto validate_return_locked;
   }
   break;
  case 129:
   if (tag_len < CIPSO_V4_TAG_RNG_BLEN) {
    err_offset = opt_iter + 1;
    goto validate_return_locked;
   }

   if (cipso_v4_map_lvl_valid(doi_def,
         tag[3]) < 0) {
    err_offset = opt_iter + 3;
    goto validate_return_locked;
   }
   if (tag_len > CIPSO_V4_TAG_RNG_BLEN &&
       cipso_v4_map_cat_rng_valid(doi_def,
             &tag[4],
             tag_len - 4) < 0) {
    err_offset = opt_iter + 4;
    goto validate_return_locked;
   }
   break;
  case 130:





   if (skb == ((void*)0) || !(skb->dev->flags & IFF_LOOPBACK)) {
    err_offset = opt_iter;
    goto validate_return_locked;
   }
   if (tag_len != CIPSO_V4_TAG_LOC_BLEN) {
    err_offset = opt_iter + 1;
    goto validate_return_locked;
   }
   break;
  default:
   err_offset = opt_iter;
   goto validate_return_locked;
  }

  tag += tag_len;
  opt_iter += tag_len;
 }

validate_return_locked:
 rcu_read_unlock();
validate_return:
 *option = opt + err_offset;
 return err_offset;
}
