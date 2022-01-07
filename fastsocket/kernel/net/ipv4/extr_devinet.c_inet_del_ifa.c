
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ifaddr {int dummy; } ;
struct in_device {int dummy; } ;


 int __inet_del_ifa (struct in_device*,struct in_ifaddr**,int,int *,int ) ;

__attribute__((used)) static void inet_del_ifa(struct in_device *in_dev, struct in_ifaddr **ifap,
    int destroy)
{
 __inet_del_ifa(in_dev, ifap, destroy, ((void*)0), 0);
}
