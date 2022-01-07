
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int creq_mutex; } ;
struct ncp_server {TYPE_1__ rcv; } ;
struct ncp_request_reply {int dummy; } ;


 int __ncp_abort_request (struct ncp_server*,struct ncp_request_reply*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline void ncp_abort_request(struct ncp_server *server, struct ncp_request_reply *req, int err)
{
 mutex_lock(&server->rcv.creq_mutex);
 __ncp_abort_request(server, req, err);
 mutex_unlock(&server->rcv.creq_mutex);
}
