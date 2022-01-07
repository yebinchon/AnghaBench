
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llc_sap {int node; } ;


 int list_add_tail (int *,int *) ;
 int llc_sap_list ;

__attribute__((used)) static void llc_add_sap(struct llc_sap *sap)
{
 list_add_tail(&sap->node, &llc_sap_list);
}
