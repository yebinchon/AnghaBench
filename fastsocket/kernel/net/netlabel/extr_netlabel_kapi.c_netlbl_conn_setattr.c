
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct sock {int dummy; } ;
struct netlbl_lsm_secattr {int domain; } ;
struct TYPE_3__ {int cipsov4; } ;
struct netlbl_domaddr4_map {TYPE_1__ type_def; int type; } ;




 int ENOENT ;
 int EPROTONOSUPPORT ;


 int cipso_v4_sock_delattr (struct sock*) ;
 int cipso_v4_sock_setattr (struct sock*,int ,struct netlbl_lsm_secattr const*) ;
 struct netlbl_domaddr4_map* netlbl_domhsh_getentry_af4 (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int netlbl_conn_setattr(struct sock *sk,
   struct sockaddr *addr,
   const struct netlbl_lsm_secattr *secattr)
{
 int ret_val;
 struct sockaddr_in *addr4;
 struct netlbl_domaddr4_map *af4_entry;

 rcu_read_lock();
 switch (addr->sa_family) {
 case 131:
  addr4 = (struct sockaddr_in *)addr;
  af4_entry = netlbl_domhsh_getentry_af4(secattr->domain,
             addr4->sin_addr.s_addr);
  if (af4_entry == ((void*)0)) {
   ret_val = -ENOENT;
   goto conn_setattr_return;
  }
  switch (af4_entry->type) {
  case 129:
   ret_val = cipso_v4_sock_setattr(sk,
         af4_entry->type_def.cipsov4,
         secattr);
   break;
  case 128:


   cipso_v4_sock_delattr(sk);
   ret_val = 0;
   break;
  default:
   ret_val = -ENOENT;
  }
  break;







 default:
  ret_val = -EPROTONOSUPPORT;
 }

conn_setattr_return:
 rcu_read_unlock();
 return ret_val;
}
