
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_trans_fd {scalar_t__ wr; scalar_t__ rd; int conn; } ;
struct p9_client {int status; struct p9_trans_fd* trans; } ;


 int Disconnected ;
 int fput (scalar_t__) ;
 int kfree (struct p9_trans_fd*) ;
 int p9_conn_destroy (int ) ;

__attribute__((used)) static void p9_fd_close(struct p9_client *client)
{
 struct p9_trans_fd *ts;

 if (!client)
  return;

 ts = client->trans;
 if (!ts)
  return;

 client->status = Disconnected;

 p9_conn_destroy(ts->conn);

 if (ts->rd)
  fput(ts->rd);
 if (ts->wr)
  fput(ts->wr);

 kfree(ts);
}
