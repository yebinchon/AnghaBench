
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlbl_audit {int dummy; } ;
struct cipso_v4_doi {int dummy; } ;


 int cipso_v4_doi_add (struct cipso_v4_doi*,struct netlbl_audit*) ;

int netlbl_cfg_cipsov4_add(struct cipso_v4_doi *doi_def,
      struct netlbl_audit *audit_info)
{
 return cipso_v4_doi_add(doi_def, audit_info);
}
