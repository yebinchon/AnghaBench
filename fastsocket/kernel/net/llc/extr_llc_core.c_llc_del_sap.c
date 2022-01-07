
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llc_sap {int node; } ;


 int list_del (int *) ;
 int llc_sap_list_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void llc_del_sap(struct llc_sap *sap)
{
 write_lock_bh(&llc_sap_list_lock);
 list_del(&sap->node);
 write_unlock_bh(&llc_sap_list_lock);
}
