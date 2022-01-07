
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ifaddr {int dummy; } ;


 int __inet_insert_ifa (struct in_ifaddr*,int *,int ) ;

__attribute__((used)) static int inet_insert_ifa(struct in_ifaddr *ifa)
{
 return __inet_insert_ifa(ifa, ((void*)0), 0);
}
