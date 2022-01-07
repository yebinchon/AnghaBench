
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_ifaddr {int dummy; } ;


 int kfree (struct dn_ifaddr*) ;

__attribute__((used)) static __inline__ void dn_dev_free_ifa(struct dn_ifaddr *ifa)
{
 kfree(ifa);
}
