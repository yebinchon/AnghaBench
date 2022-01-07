
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int EADDRNOTAVAIL ;
 scalar_t__ RTN_LOCAL ;
 scalar_t__ inet_addr_type (int *,int ) ;
 int init_net ;

__attribute__((used)) static int rds_tcp_laddr_check(__be32 addr)
{
 if (inet_addr_type(&init_net, addr) == RTN_LOCAL)
  return 0;
 return -EADDRNOTAVAIL;
}
