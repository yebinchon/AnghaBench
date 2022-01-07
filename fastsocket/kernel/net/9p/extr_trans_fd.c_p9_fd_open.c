
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_trans_fd {void* wr; void* rd; } ;
struct p9_client {int status; struct p9_trans_fd* trans; } ;


 int Connected ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* fget (int) ;
 int fput (void*) ;
 int kfree (struct p9_trans_fd*) ;
 struct p9_trans_fd* kmalloc (int,int ) ;

__attribute__((used)) static int p9_fd_open(struct p9_client *client, int rfd, int wfd)
{
 struct p9_trans_fd *ts = kmalloc(sizeof(struct p9_trans_fd),
        GFP_KERNEL);
 if (!ts)
  return -ENOMEM;

 ts->rd = fget(rfd);
 ts->wr = fget(wfd);
 if (!ts->rd || !ts->wr) {
  if (ts->rd)
   fput(ts->rd);
  if (ts->wr)
   fput(ts->wr);
  kfree(ts);
  return -EIO;
 }

 client->trans = ts;
 client->status = Connected;

 return 0;
}
