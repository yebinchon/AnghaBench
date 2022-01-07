
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_fib_res {int scope; } ;
typedef int __le16 ;


 int DN_FIB_RES_DEV (struct dn_fib_res) ;
 int DN_FIB_RES_GW (struct dn_fib_res) ;
 int dnet_select_source (int ,int ,int ) ;

__attribute__((used)) static inline __le16 __dn_fib_res_prefsrc(struct dn_fib_res *res)
{
 return dnet_select_source(DN_FIB_RES_DEV(*res), DN_FIB_RES_GW(*res), res->scope);
}
