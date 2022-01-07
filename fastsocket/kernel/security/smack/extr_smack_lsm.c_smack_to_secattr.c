
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smack_cipso {char* smk_catset; int smk_level; } ;
struct TYPE_4__ {int lvl; } ;
struct TYPE_3__ {TYPE_2__ mls; } ;
struct netlbl_lsm_secattr {char* domain; int flags; TYPE_1__ attr; } ;


 int NETLBL_SECATTR_DOMAIN ;
 int NETLBL_SECATTR_MLS_LVL ;
 int smack_cipso_direct ;
 int smack_set_catset (char*,struct netlbl_lsm_secattr*) ;
 int smack_to_cipso (char*,struct smack_cipso*) ;

__attribute__((used)) static void smack_to_secattr(char *smack, struct netlbl_lsm_secattr *nlsp)
{
 struct smack_cipso cipso;
 int rc;

 nlsp->domain = smack;
 nlsp->flags = NETLBL_SECATTR_DOMAIN | NETLBL_SECATTR_MLS_LVL;

 rc = smack_to_cipso(smack, &cipso);
 if (rc == 0) {
  nlsp->attr.mls.lvl = cipso.smk_level;
  smack_set_catset(cipso.smk_catset, nlsp);
 } else {
  nlsp->attr.mls.lvl = smack_cipso_direct;
  smack_set_catset(smack, nlsp);
 }
}
