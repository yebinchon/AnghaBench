
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xfrm_selector {int dummy; } ;
struct xfrm_migrate {int dummy; } ;
struct xfrm_kmaddress {int dummy; } ;


 int ENOPROTOOPT ;

__attribute__((used)) static int pfkey_send_migrate(struct xfrm_selector *sel, u8 dir, u8 type,
         struct xfrm_migrate *m, int num_bundles,
         struct xfrm_kmaddress *k)
{
 return -ENOPROTOOPT;
}
