
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_pipe_msg {int len; int im_status; int im_id; struct rpc_pipe_msg* data; int im_conv; int im_type; int im_name; } ;
struct idmap_msg {int len; int im_status; int im_id; struct idmap_msg* data; int im_conv; int im_type; int im_name; } ;
struct idmap_hashtable {int h_type; } ;
struct idmap_hashent {int ih_id; } ;
struct idmap {int idmap_lock; int idmap_im_lock; int idmap_wq; TYPE_1__* idmap_dentry; struct rpc_pipe_msg idmap_im; } ;
typedef int msg ;
typedef int __u32 ;
struct TYPE_2__ {int d_inode; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EINVAL ;
 int EIO ;
 int IDMAP_CONV_NAMETOID ;
 size_t IDMAP_NAMESZ ;
 int IDMAP_STATUS_SUCCESS ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int add_wait_queue (int *,int *) ;
 int current ;
 struct idmap_hashent* idmap_lookup_name (struct idmap_hashtable*,char const*,size_t) ;
 int memcpy (int ,char const*,size_t) ;
 int memset (struct rpc_pipe_msg*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int remove_wait_queue (int *,int *) ;
 scalar_t__ rpc_queue_upcall (int ,struct rpc_pipe_msg*) ;
 int schedule () ;
 int set_current_state (int ) ;
 int wq ;

__attribute__((used)) static int
nfs_idmap_id(struct idmap *idmap, struct idmap_hashtable *h,
  const char *name, size_t namelen, __u32 *id)
{
 struct rpc_pipe_msg msg;
 struct idmap_msg *im;
 struct idmap_hashent *he;
 DECLARE_WAITQUEUE(wq, current);
 int ret = -EIO;

 im = &idmap->idmap_im;





 for (;;) {
  if (namelen == 0)
   return -EINVAL;
  if (name[namelen-1] != '\0')
   break;
  namelen--;
 }
 if (namelen >= IDMAP_NAMESZ)
  return -EINVAL;

 mutex_lock(&idmap->idmap_lock);
 mutex_lock(&idmap->idmap_im_lock);

 he = idmap_lookup_name(h, name, namelen);
 if (he != ((void*)0)) {
  *id = he->ih_id;
  ret = 0;
  goto out;
 }

 memset(im, 0, sizeof(*im));
 memcpy(im->im_name, name, namelen);

 im->im_type = h->h_type;
 im->im_conv = IDMAP_CONV_NAMETOID;

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
  *id = im->im_id;
  ret = 0;
 }

 out:
 memset(im, 0, sizeof(*im));
 mutex_unlock(&idmap->idmap_im_lock);
 mutex_unlock(&idmap->idmap_lock);
 return ret;
}
