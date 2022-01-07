
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct llc_sap {TYPE_1__ sk_list; } ;


 int WARN_ON (int) ;
 int hlist_empty (int *) ;
 int kfree (struct llc_sap*) ;
 int llc_del_sap (struct llc_sap*) ;

void llc_sap_close(struct llc_sap *sap)
{
 WARN_ON(!hlist_empty(&sap->sk_list.list));
 llc_del_sap(sap);
 kfree(sap);
}
