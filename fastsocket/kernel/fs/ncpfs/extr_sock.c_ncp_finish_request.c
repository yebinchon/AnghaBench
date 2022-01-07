
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int rxbuf; } ;
struct ncp_request_reply {int result; scalar_t__ status; int wq; int datalen; int reply_buf; } ;


 scalar_t__ RQ_ABANDONED ;
 scalar_t__ RQ_DONE ;
 int memcpy (int ,int ,int ) ;
 int ncp_req_put (struct ncp_request_reply*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static inline void ncp_finish_request(struct ncp_server *server, struct ncp_request_reply *req, int result)
{
 req->result = result;
 if (req->status != RQ_ABANDONED)
  memcpy(req->reply_buf, server->rxbuf, req->datalen);
 req->status = RQ_DONE;
 wake_up_all(&req->wq);
 ncp_req_put(req);
}
