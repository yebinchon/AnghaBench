
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llc_sap {int dummy; } ;


 int LLC_SAP_DYN_START ;
 int LLC_SAP_DYN_STOP ;
 int LLC_SAP_DYN_TRIES ;
 struct llc_sap* llc_sap_find (int) ;
 int llc_sap_put (struct llc_sap*) ;
 int llc_ui_sap_last_autoport ;

__attribute__((used)) static int llc_ui_autoport(void)
{
 struct llc_sap *sap;
 int i, tries = 0;

 while (tries < LLC_SAP_DYN_TRIES) {
  for (i = llc_ui_sap_last_autoport;
       i < LLC_SAP_DYN_STOP; i += 2) {
   sap = llc_sap_find(i);
   if (!sap) {
    llc_ui_sap_last_autoport = i + 2;
    goto out;
   }
   llc_sap_put(sap);
  }
  llc_ui_sap_last_autoport = LLC_SAP_DYN_START;
  tries++;
 }
 i = 0;
out:
 return i;
}
