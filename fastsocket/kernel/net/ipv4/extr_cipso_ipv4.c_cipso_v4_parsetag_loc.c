
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int secid; } ;
struct netlbl_lsm_secattr {int flags; TYPE_1__ attr; } ;
struct cipso_v4_doi {int dummy; } ;


 int NETLBL_SECATTR_SECID ;

__attribute__((used)) static int cipso_v4_parsetag_loc(const struct cipso_v4_doi *doi_def,
     const unsigned char *tag,
     struct netlbl_lsm_secattr *secattr)
{
 secattr->attr.secid = *(u32 *)&tag[2];
 secattr->flags |= NETLBL_SECATTR_SECID;

 return 0;
}
