
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service_user_kern {scalar_t__ af; int netmask; int flags; int timeout; scalar_t__* pe_name; scalar_t__* sched_name; } ;
struct ip_vs_service {int flags; int timeout; int netmask; struct ip_vs_pe* pe; struct ip_vs_scheduler* scheduler; int usecnt; } ;
struct ip_vs_scheduler {int dummy; } ;
struct ip_vs_pe {int dummy; } ;


 scalar_t__ AF_INET6 ;
 int EINVAL ;
 int ENOENT ;
 int HZ ;
 int IP_VS_SVC_F_HASHED ;
 int IP_VS_WAIT_WHILE (int) ;
 int __ip_vs_svc_lock ;
 int atomic_read (int *) ;
 int ip_vs_bind_pe (struct ip_vs_service*,struct ip_vs_pe*) ;
 int ip_vs_bind_scheduler (struct ip_vs_service*,struct ip_vs_scheduler*) ;
 struct ip_vs_pe* ip_vs_pe_getbyname (scalar_t__*) ;
 int ip_vs_pe_put (struct ip_vs_pe*) ;
 struct ip_vs_scheduler* ip_vs_scheduler_get (scalar_t__*) ;
 int ip_vs_scheduler_put (struct ip_vs_scheduler*) ;
 int ip_vs_unbind_pe (struct ip_vs_service*) ;
 int ip_vs_unbind_scheduler (struct ip_vs_service*) ;
 int pr_info (char*,scalar_t__*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int
ip_vs_edit_service(struct ip_vs_service *svc, struct ip_vs_service_user_kern *u)
{
 struct ip_vs_scheduler *sched, *old_sched;
 struct ip_vs_pe *pe = ((void*)0), *old_pe = ((void*)0);
 int ret = 0;




 sched = ip_vs_scheduler_get(u->sched_name);
 if (sched == ((void*)0)) {
  pr_info("Scheduler module ip_vs_%s not found\n", u->sched_name);
  return -ENOENT;
 }
 old_sched = sched;

 if (u->pe_name && *u->pe_name) {
  pe = ip_vs_pe_getbyname(u->pe_name);
  if (pe == ((void*)0)) {
   pr_info("persistence engine module ip_vs_pe_%s "
    "not found\n", u->pe_name);
   ret = -ENOENT;
   goto out;
  }
  old_pe = pe;
 }
 write_lock_bh(&__ip_vs_svc_lock);




 IP_VS_WAIT_WHILE(atomic_read(&svc->usecnt) > 1);




 svc->flags = u->flags | IP_VS_SVC_F_HASHED;
 svc->timeout = u->timeout * HZ;
 svc->netmask = u->netmask;

 old_sched = svc->scheduler;
 if (sched != old_sched) {



  if ((ret = ip_vs_unbind_scheduler(svc))) {
   old_sched = sched;
   goto out_unlock;
  }




  if ((ret = ip_vs_bind_scheduler(svc, sched))) {
   ip_vs_bind_scheduler(svc, old_sched);
   old_sched = sched;
   goto out_unlock;
  }
 }

 old_pe = svc->pe;
 if (pe != old_pe) {
  ip_vs_unbind_pe(svc);
  ip_vs_bind_pe(svc, pe);
 }

  out_unlock:
 write_unlock_bh(&__ip_vs_svc_lock);
  out:
 ip_vs_scheduler_put(old_sched);
 ip_vs_pe_put(old_pe);
 return ret;
}
