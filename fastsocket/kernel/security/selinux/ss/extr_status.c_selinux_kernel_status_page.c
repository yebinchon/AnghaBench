
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinux_kernel_status {int deny_unknown; scalar_t__ policyload; int enforcing; scalar_t__ sequence; int version; } ;
struct page {int dummy; } ;


 int GFP_KERNEL ;
 int SELINUX_KERNEL_STATUS_VERSION ;
 int __GFP_ZERO ;
 struct page* alloc_page (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct selinux_kernel_status* page_address (struct page*) ;
 int security_get_allow_unknown () ;
 int selinux_enforcing ;
 int selinux_status_lock ;
 struct page* selinux_status_page ;

struct page *selinux_kernel_status_page(void)
{
 struct selinux_kernel_status *status;
 struct page *result = ((void*)0);

 mutex_lock(&selinux_status_lock);
 if (!selinux_status_page) {
  selinux_status_page = alloc_page(GFP_KERNEL|__GFP_ZERO);

  if (selinux_status_page) {
   status = page_address(selinux_status_page);

   status->version = SELINUX_KERNEL_STATUS_VERSION;
   status->sequence = 0;
   status->enforcing = selinux_enforcing;






   status->policyload = 0;
   status->deny_unknown = !security_get_allow_unknown();
  }
 }
 result = selinux_status_page;
 mutex_unlock(&selinux_status_lock);

 return result;
}
