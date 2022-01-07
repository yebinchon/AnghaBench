
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipx_interface {int dummy; } ;


 int __ipxitf_down (struct ipx_interface*) ;
 int ipx_interfaces_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ipxitf_down(struct ipx_interface *intrfc)
{
 spin_lock_bh(&ipx_interfaces_lock);
 __ipxitf_down(intrfc);
 spin_unlock_bh(&ipx_interfaces_lock);
}
