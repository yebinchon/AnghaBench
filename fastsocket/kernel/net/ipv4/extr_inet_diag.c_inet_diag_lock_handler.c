
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_diag_handler {int dummy; } ;


 int ENOENT ;
 struct inet_diag_handler const* ERR_PTR (int ) ;
 int NETLINK_INET_DIAG ;
 int PF_NETLINK ;
 struct inet_diag_handler const** inet_diag_table ;
 int inet_diag_table_mutex ;
 int mutex_lock (int *) ;
 int request_module (char*,int ,int ,int) ;

__attribute__((used)) static const struct inet_diag_handler *inet_diag_lock_handler(int type)
{
 if (!inet_diag_table[type])
  request_module("net-pf-%d-proto-%d-type-%d", PF_NETLINK,
          NETLINK_INET_DIAG, type);

 mutex_lock(&inet_diag_table_mutex);
 if (!inet_diag_table[type])
  return ERR_PTR(-ENOENT);

 return inet_diag_table[type];
}
