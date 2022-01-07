
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct netlbl_lsm_secattr {int dummy; } ;
struct cipso_v4_doi {int* tags; } ;


 scalar_t__ CIPSO_V4_HDR_LEN ;

 int CIPSO_V4_TAG_INVALID ;

 scalar_t__ CIPSO_V4_TAG_MAXCNT ;


 int ENOSPC ;
 int EPERM ;
 int cipso_v4_gentag_enum (struct cipso_v4_doi const*,struct netlbl_lsm_secattr const*,unsigned char*,scalar_t__) ;
 int cipso_v4_gentag_hdr (struct cipso_v4_doi const*,unsigned char*,int) ;
 int cipso_v4_gentag_loc (struct cipso_v4_doi const*,struct netlbl_lsm_secattr const*,unsigned char*,scalar_t__) ;
 int cipso_v4_gentag_rbm (struct cipso_v4_doi const*,struct netlbl_lsm_secattr const*,unsigned char*,scalar_t__) ;
 int cipso_v4_gentag_rng (struct cipso_v4_doi const*,struct netlbl_lsm_secattr const*,unsigned char*,scalar_t__) ;
 int memset (unsigned char*,int ,scalar_t__) ;

__attribute__((used)) static int cipso_v4_genopt(unsigned char *buf, u32 buf_len,
      const struct cipso_v4_doi *doi_def,
      const struct netlbl_lsm_secattr *secattr)
{
 int ret_val;
 u32 iter;

 if (buf_len <= CIPSO_V4_HDR_LEN)
  return -ENOSPC;




 iter = 0;
 do {
  memset(buf, 0, buf_len);
  switch (doi_def->tags[iter]) {
  case 128:
   ret_val = cipso_v4_gentag_rbm(doi_def,
         secattr,
         &buf[CIPSO_V4_HDR_LEN],
         buf_len - CIPSO_V4_HDR_LEN);
   break;
  case 131:
   ret_val = cipso_v4_gentag_enum(doi_def,
         secattr,
         &buf[CIPSO_V4_HDR_LEN],
         buf_len - CIPSO_V4_HDR_LEN);
   break;
  case 129:
   ret_val = cipso_v4_gentag_rng(doi_def,
         secattr,
         &buf[CIPSO_V4_HDR_LEN],
         buf_len - CIPSO_V4_HDR_LEN);
   break;
  case 130:
   ret_val = cipso_v4_gentag_loc(doi_def,
         secattr,
         &buf[CIPSO_V4_HDR_LEN],
         buf_len - CIPSO_V4_HDR_LEN);
   break;
  default:
   return -EPERM;
  }

  iter++;
 } while (ret_val < 0 &&
   iter < CIPSO_V4_TAG_MAXCNT &&
   doi_def->tags[iter] != CIPSO_V4_TAG_INVALID);
 if (ret_val < 0)
  return ret_val;
 cipso_v4_gentag_hdr(doi_def, buf, ret_val);
 return CIPSO_V4_HDR_LEN + ret_val;
}
