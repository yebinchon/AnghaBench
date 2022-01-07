
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llc_sap {int dummy; } ;


 struct llc_sap* __llc_sap_find (unsigned char) ;
 int llc_sap_hold (struct llc_sap*) ;
 int llc_sap_list_lock ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

struct llc_sap *llc_sap_find(unsigned char sap_value)
{
 struct llc_sap* sap;

 read_lock_bh(&llc_sap_list_lock);
 sap = __llc_sap_find(sap_value);
 if (sap)
  llc_sap_hold(sap);
 read_unlock_bh(&llc_sap_list_lock);
 return sap;
}
