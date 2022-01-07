
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netlbl_lsm_secattr {int type; } ;
struct cipso_v4_doi {int dummy; } ;






 int ENOMSG ;
 int NETLBL_NLTYPE_CIPSOV4 ;
 scalar_t__ cipso_v4_cache_check (unsigned char const*,unsigned char const,struct netlbl_lsm_secattr*) ;
 struct cipso_v4_doi* cipso_v4_doi_search (int ) ;
 int cipso_v4_parsetag_enum (struct cipso_v4_doi*,unsigned char const*,struct netlbl_lsm_secattr*) ;
 int cipso_v4_parsetag_loc (struct cipso_v4_doi*,unsigned char const*,struct netlbl_lsm_secattr*) ;
 int cipso_v4_parsetag_rbm (struct cipso_v4_doi*,unsigned char const*,struct netlbl_lsm_secattr*) ;
 int cipso_v4_parsetag_rng (struct cipso_v4_doi*,unsigned char const*,struct netlbl_lsm_secattr*) ;
 int get_unaligned_be32 (unsigned char const*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int cipso_v4_getattr(const unsigned char *cipso,
       struct netlbl_lsm_secattr *secattr)
{
 int ret_val = -ENOMSG;
 u32 doi;
 struct cipso_v4_doi *doi_def;

 if (cipso_v4_cache_check(cipso, cipso[1], secattr) == 0)
  return 0;

 doi = get_unaligned_be32(&cipso[2]);
 rcu_read_lock();
 doi_def = cipso_v4_doi_search(doi);
 if (doi_def == ((void*)0))
  goto getattr_return;



 switch (cipso[6]) {
 case 128:
  ret_val = cipso_v4_parsetag_rbm(doi_def, &cipso[6], secattr);
  break;
 case 131:
  ret_val = cipso_v4_parsetag_enum(doi_def, &cipso[6], secattr);
  break;
 case 129:
  ret_val = cipso_v4_parsetag_rng(doi_def, &cipso[6], secattr);
  break;
 case 130:
  ret_val = cipso_v4_parsetag_loc(doi_def, &cipso[6], secattr);
  break;
 }
 if (ret_val == 0)
  secattr->type = NETLBL_NLTYPE_CIPSOV4;

getattr_return:
 rcu_read_unlock();
 return ret_val;
}
