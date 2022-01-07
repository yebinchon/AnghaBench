
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct rpc_request_hdr {scalar_t__ xid; void* procedure; int vers; int prog; void* rpc_vers; } ;
struct TYPE_3__ {scalar_t__ accept_stat; } ;
struct TYPE_4__ {TYPE_1__ acc_hdr; } ;
struct rpc_reply_hdr {scalar_t__ type; scalar_t__ xid; scalar_t__ reply_stat; TYPE_2__ data; } ;
struct msm_rpc_endpoint {int dst_pid; int dst_vers; int dst_prog; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ENOTCONN ;
 int EPERM ;
 int ETOOSMALL ;
 int atomic_add_return (int,int *) ;
 void* cpu_to_be32 (int) ;
 int kfree (struct rpc_reply_hdr*) ;
 int memcpy (void*,struct rpc_reply_hdr*,int) ;
 int memset (struct rpc_request_hdr*,int ,int) ;
 int msm_rpc_read (struct msm_rpc_endpoint*,void*,int,long) ;
 int msm_rpc_write (struct msm_rpc_endpoint*,struct rpc_request_hdr*,int) ;
 int next_xid ;

int msm_rpc_call_reply(struct msm_rpc_endpoint *ept, uint32_t proc,
         void *_request, int request_size,
         void *_reply, int reply_size,
         long timeout)
{
 struct rpc_request_hdr *req = _request;
 struct rpc_reply_hdr *reply;
 int rc;

 if (request_size < sizeof(*req))
  return -ETOOSMALL;

 if (ept->dst_pid == 0xffffffff)
  return -ENOTCONN;




 memset(req, 0, sizeof(*req));
 req->xid = cpu_to_be32(atomic_add_return(1, &next_xid));
 req->rpc_vers = cpu_to_be32(2);
 req->prog = ept->dst_prog;
 req->vers = ept->dst_vers;
 req->procedure = cpu_to_be32(proc);

 rc = msm_rpc_write(ept, req, request_size);
 if (rc < 0)
  return rc;

 for (;;) {
  rc = msm_rpc_read(ept, (void*) &reply, -1, timeout);
  if (rc < 0)
   return rc;
  if (rc < (3 * sizeof(uint32_t))) {
   rc = -EIO;
   break;
  }

  if (reply->type == 0) {
   kfree(reply);
   continue;
  }




  if (reply->xid != req->xid) {
   kfree(reply);
   continue;
  }
  if (reply->reply_stat != 0) {
   rc = -EPERM;
   break;
  }
  if (reply->data.acc_hdr.accept_stat != 0) {
   rc = -EINVAL;
   break;
  }
  if (_reply == ((void*)0)) {
   rc = 0;
   break;
  }
  if (rc > reply_size) {
   rc = -ENOMEM;
  } else {
   memcpy(_reply, reply, rc);
  }
  break;
 }
 kfree(reply);
 return rc;
}
