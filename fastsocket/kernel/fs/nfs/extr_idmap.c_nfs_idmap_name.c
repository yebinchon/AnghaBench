
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_pipe_msg {int len; int im_status; int im_name; struct rpc_pipe_msg* data; int im_id; int im_conv; int im_type; } ;
struct idmap_msg {int len; int im_status; int im_name; struct idmap_msg* data; int im_id; int im_conv; int im_type; } ;
struct idmap_hashtable {int h_type; } ;
struct idmap_hashent {unsigned int ih_namelen; int ih_name; } ;
struct idmap {int idmap_lock; int idmap_im_lock; int idmap_wq; TYPE_1__* idmap_dentry; struct rpc_pipe_msg idmap_im; } ;
typedef int msg ;
typedef int __u32 ;
struct TYPE_2__ {int d_inode; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EIO ;
 int IDMAP_CONV_IDTONAME ;
 int IDMAP_NAMESZ ;
 int IDMAP_STATUS_SUCCESS ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int add_wait_queue (int *,int *) ;
 int current ;
 struct idmap_hashent* idmap_lookup_id (struct idmap_hashtable*,int ) ;
 int memcpy (char*,int ,unsigned int) ;
 int memset (struct rpc_pipe_msg*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int remove_wait_queue (int *,int *) ;
 scalar_t__ rpc_queue_upcall (int ,struct rpc_pipe_msg*) ;
 int schedule () ;
 int set_current_state (int ) ;
 unsigned int strnlen (int ,int ) ;
 int wq ;

__attribute__((used)) static int
nfs_idmap_name(struct idmap *idmap, struct idmap_hashtable *h,
  __u32 id, char *name)
{
 struct rpc_pipe_msg msg;
 struct idmap_msg *im;
 struct idmap_hashent *he;
 DECLARE_WAITQUEUE(wq, current);
 int ret = -EIO;
 unsigned int len;

 im = &idmap->idmap_im;

 mutex_lock(&idmap->idmap_lock);
 mutex_lock(&idmap->idmap_im_lock);

 he = idmap_lookup_id(h, id);
 if (he) {
  memcpy(name, he->ih_name, he->ih_namelen);
  ret = he->ih_namelen;
  goto out;
 }

 memset(im, 0, sizeof(*im));
 im->im_type = h->h_type;
 im->im_conv = IDMAP_CONV_IDTONAME;
 im->im_id = id;

 memset(&msg, 0, sizeof(msg));
 msg.data = im;
 msg.len = sizeof(*im);

 add_wait_queue(&idmap->idmap_wq, &wq);

 if (rpc_queue_upcall(idmap->idmap_dentry->d_inode, &msg) < 0) {
  remove_wait_queue(&idmap->idmap_wq, &wq);
  goto out;
 }

 set_current_state(TASK_UNINTERRUPTIBLE);
 mutex_unlock(&idmap->idmap_im_lock);
 schedule();
 __set_current_state(TASK_RUNNING);
 remove_wait_queue(&idmap->idmap_wq, &wq);
 mutex_lock(&idmap->idmap_im_lock);

 if (im->im_status & IDMAP_STATUS_SUCCESS) {
  if ((len = strnlen(im->im_name, IDMAP_NAMESZ)) == 0)
   goto out;
  memcpy(name, im->im_name, len);
  ret = len;
 }

 out:
 memset(im, 0, sizeof(*im));
 mutex_unlock(&idmap->idmap_im_lock);
 mutex_unlock(&idmap->idmap_lock);
 return ret;
}
