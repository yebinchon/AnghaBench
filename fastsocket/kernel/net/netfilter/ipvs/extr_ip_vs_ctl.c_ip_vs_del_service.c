
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {int usecnt; } ;


 int EEXIST ;
 int IP_VS_WAIT_WHILE (int) ;
 int __ip_vs_del_service (struct ip_vs_service*) ;
 int __ip_vs_svc_lock ;
 int atomic_read (int *) ;
 int ip_vs_svc_unhash (struct ip_vs_service*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int ip_vs_del_service(struct ip_vs_service *svc)
{
 if (svc == ((void*)0))
  return -EEXIST;




 write_lock_bh(&__ip_vs_svc_lock);

 ip_vs_svc_unhash(svc);




 IP_VS_WAIT_WHILE(atomic_read(&svc->usecnt) > 1);

 __ip_vs_del_service(svc);

 write_unlock_bh(&__ip_vs_svc_lock);

 return 0;
}
