
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grant_ref_t ;
typedef int domid_t ;


 int GTF_accept_transfer ;
 int update_grant_entry (int ,int ,unsigned long,int ) ;

void gnttab_grant_foreign_transfer_ref(grant_ref_t ref, domid_t domid,
           unsigned long pfn)
{
 update_grant_entry(ref, domid, pfn, GTF_accept_transfer);
}
