
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct poll_table_struct {int dummy; } ;
struct p9_trans_fd {TYPE_2__* wr; TYPE_2__* rd; } ;
struct p9_client {scalar_t__ status; struct p9_trans_fd* trans; } ;
struct TYPE_5__ {TYPE_1__* f_op; } ;
struct TYPE_4__ {int (* poll ) (TYPE_2__*,struct poll_table_struct*) ;} ;


 scalar_t__ Connected ;
 unsigned int EIO ;
 unsigned int EREMOTEIO ;
 int POLLIN ;
 int POLLOUT ;
 int stub1 (TYPE_2__*,struct poll_table_struct*) ;
 int stub2 (TYPE_2__*,struct poll_table_struct*) ;

__attribute__((used)) static unsigned int
p9_fd_poll(struct p9_client *client, struct poll_table_struct *pt)
{
 int ret, n;
 struct p9_trans_fd *ts = ((void*)0);

 if (client && client->status == Connected)
  ts = client->trans;

 if (!ts)
  return -EREMOTEIO;

 if (!ts->rd->f_op || !ts->rd->f_op->poll)
  return -EIO;

 if (!ts->wr->f_op || !ts->wr->f_op->poll)
  return -EIO;

 ret = ts->rd->f_op->poll(ts->rd, pt);
 if (ret < 0)
  return ret;

 if (ts->rd != ts->wr) {
  n = ts->wr->f_op->poll(ts->wr, pt);
  if (n < 0)
   return n;
  ret = (ret & ~POLLOUT) | (n & ~POLLIN);
 }

 return ret;
}
