
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinux_kernel_status {int policyload; int deny_unknown; int sequence; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct selinux_kernel_status* page_address (scalar_t__) ;
 int security_get_allow_unknown () ;
 int selinux_status_lock ;
 scalar_t__ selinux_status_page ;
 int smp_wmb () ;

void selinux_status_update_policyload(int seqno)
{
 struct selinux_kernel_status *status;

 mutex_lock(&selinux_status_lock);
 if (selinux_status_page) {
  status = page_address(selinux_status_page);

  status->sequence++;
  smp_wmb();

  status->policyload = seqno;
  status->deny_unknown = !security_get_allow_unknown();

  smp_wmb();
  status->sequence++;
 }
 mutex_unlock(&selinux_status_lock);
}
