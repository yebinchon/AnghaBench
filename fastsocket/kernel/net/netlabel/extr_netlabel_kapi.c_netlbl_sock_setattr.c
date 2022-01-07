
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sock {int dummy; } ;
struct netlbl_lsm_secattr {int domain; } ;
struct TYPE_2__ {int cipsov4; } ;
struct netlbl_dom_map {TYPE_1__ type_def; int type; } ;




 int EDESTADDRREQ ;
 int ENOENT ;
 int EPROTONOSUPPORT ;



 int cipso_v4_sock_setattr (struct sock*,int ,struct netlbl_lsm_secattr const*) ;
 struct netlbl_dom_map* netlbl_domhsh_getentry (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int netlbl_sock_setattr(struct sock *sk,
   u16 family,
   const struct netlbl_lsm_secattr *secattr)
{
 int ret_val;
 struct netlbl_dom_map *dom_entry;

 rcu_read_lock();
 dom_entry = netlbl_domhsh_getentry(secattr->domain);
 if (dom_entry == ((void*)0)) {
  ret_val = -ENOENT;
  goto socket_setattr_return;
 }
 switch (family) {
 case 132:
  switch (dom_entry->type) {
  case 130:
   ret_val = -EDESTADDRREQ;
   break;
  case 129:
   ret_val = cipso_v4_sock_setattr(sk,
          dom_entry->type_def.cipsov4,
          secattr);
   break;
  case 128:
   ret_val = 0;
   break;
  default:
   ret_val = -ENOENT;
  }
  break;







 default:
  ret_val = -EPROTONOSUPPORT;
 }

socket_setattr_return:
 rcu_read_unlock();
 return ret_val;
}
