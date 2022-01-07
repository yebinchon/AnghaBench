
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lvl; int cat; } ;
struct TYPE_4__ {int secid; TYPE_1__ mls; } ;
struct netlbl_lsm_secattr {int flags; TYPE_2__ attr; } ;


 int BUG_ON (int ) ;
 int NETLBL_SECATTR_MLS_CAT ;
 int NETLBL_SECATTR_MLS_LVL ;
 int NETLBL_SECATTR_SECID ;
 int SMK_LABELLEN ;
 int SMK_MAXLEN ;
 int memcpy (char*,char*,int ) ;
 int memset (char*,char,int) ;
 int netlbl_secattr_catmap_walk (int ,int) ;
 int smack_catset_bit (int,char*) ;
 scalar_t__ smack_cipso_direct ;
 int smack_from_cipso (scalar_t__,char*,char*) ;
 char* smack_from_secid (int ) ;
 char* smack_net_ambient ;
 int strncpy (char*,char*,int ) ;

__attribute__((used)) static void smack_from_secattr(struct netlbl_lsm_secattr *sap, char *sip)
{
 char smack[SMK_LABELLEN];
 char *sp;
 int pcat;

 if ((sap->flags & NETLBL_SECATTR_MLS_LVL) != 0) {
  memset(smack, '\0', SMK_LABELLEN);
  if ((sap->flags & NETLBL_SECATTR_MLS_CAT) != 0)
   for (pcat = -1;;) {
    pcat = netlbl_secattr_catmap_walk(
     sap->attr.mls.cat, pcat + 1);
    if (pcat < 0)
     break;
    smack_catset_bit(pcat, smack);
   }




  if (sap->attr.mls.lvl == smack_cipso_direct) {
   memcpy(sip, smack, SMK_MAXLEN);
   return;
  }




  smack_from_cipso(sap->attr.mls.lvl, smack, sip);
  return;
 }
 if ((sap->flags & NETLBL_SECATTR_SECID) != 0) {



  sp = smack_from_secid(sap->attr.secid);







  BUG_ON(sp == ((void*)0));
  strncpy(sip, sp, SMK_MAXLEN);
  return;
 }





 strncpy(sip, smack_net_ambient, SMK_MAXLEN);
 return;
}
