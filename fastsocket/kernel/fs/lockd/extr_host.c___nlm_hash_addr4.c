
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;


 unsigned int __nlm_hash32 (int ) ;

__attribute__((used)) static unsigned int __nlm_hash_addr4(const struct sockaddr *sap)
{
 const struct sockaddr_in *sin = (struct sockaddr_in *)sap;
 return __nlm_hash32(sin->sin_addr.s_addr);
}
