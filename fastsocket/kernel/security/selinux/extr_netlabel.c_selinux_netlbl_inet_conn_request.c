
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct request_sock {int secid; } ;
struct netlbl_lsm_secattr {int dummy; } ;


 scalar_t__ PF_INET ;
 int netlbl_req_setattr (struct request_sock*,struct netlbl_lsm_secattr*) ;
 int netlbl_secattr_destroy (struct netlbl_lsm_secattr*) ;
 int netlbl_secattr_init (struct netlbl_lsm_secattr*) ;
 int security_netlbl_sid_to_secattr (int ,struct netlbl_lsm_secattr*) ;

int selinux_netlbl_inet_conn_request(struct request_sock *req, u16 family)
{
 int rc;
 struct netlbl_lsm_secattr secattr;

 if (family != PF_INET)
  return 0;

 netlbl_secattr_init(&secattr);
 rc = security_netlbl_sid_to_secattr(req->secid, &secattr);
 if (rc != 0)
  goto inet_conn_request_return;
 rc = netlbl_req_setattr(req, &secattr);
inet_conn_request_return:
 netlbl_secattr_destroy(&secattr);
 return rc;
}
