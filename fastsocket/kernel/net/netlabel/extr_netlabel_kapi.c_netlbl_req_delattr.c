
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_sock {int dummy; } ;


 int cipso_v4_req_delattr (struct request_sock*) ;

void netlbl_req_delattr(struct request_sock *req)
{
 cipso_v4_req_delattr(req);
}
