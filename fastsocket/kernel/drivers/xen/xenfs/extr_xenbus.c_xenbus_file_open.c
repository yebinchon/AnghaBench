
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_file_priv {int msgbuffer_mutex; int reply_mutex; int read_waitq; int read_buffers; int watches; int transactions; } ;
struct inode {int dummy; } ;
struct file {struct xenbus_file_priv* private_data; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 struct xenbus_file_priv* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ xen_store_evtchn ;

__attribute__((used)) static int xenbus_file_open(struct inode *inode, struct file *filp)
{
 struct xenbus_file_priv *u;

 if (xen_store_evtchn == 0)
  return -ENOENT;

 nonseekable_open(inode, filp);

 u = kzalloc(sizeof(*u), GFP_KERNEL);
 if (u == ((void*)0))
  return -ENOMEM;

 INIT_LIST_HEAD(&u->transactions);
 INIT_LIST_HEAD(&u->watches);
 INIT_LIST_HEAD(&u->read_buffers);
 init_waitqueue_head(&u->read_waitq);

 mutex_init(&u->reply_mutex);
 mutex_init(&u->msgbuffer_mutex);

 filp->private_data = u;

 return 0;
}
