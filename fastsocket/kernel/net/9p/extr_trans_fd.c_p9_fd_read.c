
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p9_trans_fd {TYPE_1__* rd; } ;
struct p9_client {scalar_t__ status; struct p9_trans_fd* trans; } ;
struct TYPE_2__ {int f_flags; int f_pos; } ;


 scalar_t__ Disconnected ;
 int EAGAIN ;
 int EREMOTEIO ;
 int ERESTARTSYS ;
 int O_NONBLOCK ;
 int P9_DEBUG_ERROR ;
 int P9_DPRINTK (int ,char*) ;
 int kernel_read (TYPE_1__*,int ,void*,int) ;

__attribute__((used)) static int p9_fd_read(struct p9_client *client, void *v, int len)
{
 int ret;
 struct p9_trans_fd *ts = ((void*)0);

 if (client && client->status != Disconnected)
  ts = client->trans;

 if (!ts)
  return -EREMOTEIO;

 if (!(ts->rd->f_flags & O_NONBLOCK))
  P9_DPRINTK(P9_DEBUG_ERROR, "blocking read ...\n");

 ret = kernel_read(ts->rd, ts->rd->f_pos, v, len);
 if (ret <= 0 && ret != -ERESTARTSYS && ret != -EAGAIN)
  client->status = Disconnected;
 return ret;
}
