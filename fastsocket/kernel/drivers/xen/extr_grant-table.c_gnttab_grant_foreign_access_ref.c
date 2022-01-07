
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grant_ref_t ;
typedef int domid_t ;


 int GTF_permit_access ;
 int GTF_readonly ;
 int update_grant_entry (int ,int ,unsigned long,int) ;

void gnttab_grant_foreign_access_ref(grant_ref_t ref, domid_t domid,
         unsigned long frame, int readonly)
{
 update_grant_entry(ref, domid, frame,
      GTF_permit_access | (readonly ? GTF_readonly : 0));
}
