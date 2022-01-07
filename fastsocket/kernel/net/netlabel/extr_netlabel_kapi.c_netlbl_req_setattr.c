
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct request_sock {TYPE_1__* rsk_ops; } ;
struct netlbl_lsm_secattr {int domain; } ;
struct TYPE_5__ {struct cipso_v4_doi* cipsov4; } ;
struct netlbl_domaddr4_map {TYPE_2__ type_def; int type; } ;
struct TYPE_6__ {struct cipso_v4_doi* cipsov4; } ;
struct netlbl_dom_map {TYPE_3__ type_def; int type; } ;
struct inet_request_sock {int rmt_addr; } ;
struct cipso_v4_doi {int dummy; } ;
struct TYPE_4__ {int family; } ;




 int ENOENT ;
 int EPROTONOSUPPORT ;
 int NETLBL_NLTYPE_ADDRSELECT ;


 int cipso_v4_req_delattr (struct request_sock*) ;
 int cipso_v4_req_setattr (struct request_sock*,struct cipso_v4_doi*,struct netlbl_lsm_secattr const*) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 struct netlbl_dom_map* netlbl_domhsh_getentry (int ) ;
 struct netlbl_domaddr4_map* netlbl_domhsh_getentry_af4 (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int netlbl_req_setattr(struct request_sock *req,
         const struct netlbl_lsm_secattr *secattr)
{
 int ret_val;
 struct netlbl_dom_map *dom_entry;
 struct netlbl_domaddr4_map *af4_entry;
 u32 proto_type;
 struct cipso_v4_doi *proto_cv4;

 rcu_read_lock();
 dom_entry = netlbl_domhsh_getentry(secattr->domain);
 if (dom_entry == ((void*)0)) {
  ret_val = -ENOENT;
  goto req_setattr_return;
 }
 switch (req->rsk_ops->family) {
 case 131:
  if (dom_entry->type == NETLBL_NLTYPE_ADDRSELECT) {
   struct inet_request_sock *req_inet = inet_rsk(req);
   af4_entry = netlbl_domhsh_getentry_af4(secattr->domain,
           req_inet->rmt_addr);
   if (af4_entry == ((void*)0)) {
    ret_val = -ENOENT;
    goto req_setattr_return;
   }
   proto_type = af4_entry->type;
   proto_cv4 = af4_entry->type_def.cipsov4;
  } else {
   proto_type = dom_entry->type;
   proto_cv4 = dom_entry->type_def.cipsov4;
  }
  switch (proto_type) {
  case 129:
   ret_val = cipso_v4_req_setattr(req, proto_cv4, secattr);
   break;
  case 128:


   cipso_v4_req_delattr(req);
   ret_val = 0;
   break;
  default:
   ret_val = -ENOENT;
  }
  break;







 default:
  ret_val = -EPROTONOSUPPORT;
 }

req_setattr_return:
 rcu_read_unlock();
 return ret_val;
}
