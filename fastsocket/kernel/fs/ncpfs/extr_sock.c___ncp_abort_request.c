
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int dummy; } ;
struct ncp_request_reply {int status; int req; } ;







 int list_del_init (int *) ;
 int ncp_finish_request (struct ncp_server*,struct ncp_request_reply*,int) ;

__attribute__((used)) static inline void __ncp_abort_request(struct ncp_server *server, struct ncp_request_reply *req, int err)
{

 switch (req->status) {
  case 130:
  case 131:
   break;
  case 128:
   list_del_init(&req->req);
   ncp_finish_request(server, req, err);
   break;
  case 129:
   req->status = 132;
   break;
  case 132:
   break;
 }
}
