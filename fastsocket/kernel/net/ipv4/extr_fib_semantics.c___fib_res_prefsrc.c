
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_result {int scope; } ;
typedef int __be32 ;


 int FIB_RES_DEV (struct fib_result) ;
 int FIB_RES_GW (struct fib_result) ;
 int inet_select_addr (int ,int ,int ) ;

__be32 __fib_res_prefsrc(struct fib_result *res)
{
 return inet_select_addr(FIB_RES_DEV(*res), FIB_RES_GW(*res), res->scope);
}
