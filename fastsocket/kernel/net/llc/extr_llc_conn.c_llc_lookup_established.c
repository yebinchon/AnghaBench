
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct llc_sap {int dummy; } ;
struct llc_addr {int dummy; } ;


 struct sock* __llc_lookup_established (struct llc_sap*,struct llc_addr*,struct llc_addr*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

struct sock *llc_lookup_established(struct llc_sap *sap,
        struct llc_addr *daddr,
        struct llc_addr *laddr)
{
 struct sock *sk;

 local_bh_disable();
 sk = __llc_lookup_established(sap, daddr, laddr);
 local_bh_enable();
 return sk;
}
