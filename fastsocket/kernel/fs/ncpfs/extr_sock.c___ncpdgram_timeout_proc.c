
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {struct ncp_request_reply* creq; } ;
struct ncp_server {int timeout_last; int timeout_tm; int ncp_sock; int timeout_retries; TYPE_2__ m; TYPE_1__ rcv; } ;
struct ncp_request_reply {int dummy; } ;


 int ETIMEDOUT ;
 int NCP_MAX_RPC_TIMEOUT ;
 int NCP_MOUNT_SOFT ;
 int __ncp_abort_request (struct ncp_server*,struct ncp_request_reply*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int ncpdgram_send (int ,struct ncp_request_reply*) ;
 int timer_pending (int *) ;

__attribute__((used)) static void __ncpdgram_timeout_proc(struct ncp_server *server)
{

 if (!timer_pending(&server->timeout_tm)) {
  struct ncp_request_reply* req;

  req = server->rcv.creq;
  if (req) {
   int timeout;

   if (server->m.flags & NCP_MOUNT_SOFT) {
    if (server->timeout_retries-- == 0) {
     __ncp_abort_request(server, req, -ETIMEDOUT);
     return;
    }
   }

   ncpdgram_send(server->ncp_sock, req);
   timeout = server->timeout_last << 1;
   if (timeout > NCP_MAX_RPC_TIMEOUT) {
    timeout = NCP_MAX_RPC_TIMEOUT;
   }
   server->timeout_last = timeout;
   mod_timer(&server->timeout_tm, jiffies + timeout);
  }
 }
}
