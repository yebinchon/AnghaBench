
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grant_ref_t ;


 unsigned long gnttab_end_foreign_transfer_ref (int ) ;
 int put_free_entry (int ) ;

unsigned long gnttab_end_foreign_transfer(grant_ref_t ref)
{
 unsigned long frame = gnttab_end_foreign_transfer_ref(ref);
 put_free_entry(ref);
 return frame;
}
