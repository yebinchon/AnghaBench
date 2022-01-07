
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int i_mutex; } ;
struct TYPE_9__ {int error; } ;
struct TYPE_10__ {TYPE_4__ h; } ;
struct TYPE_6__ {int nodeid; int opcode; } ;
struct TYPE_8__ {int numargs; TYPE_2__* args; TYPE_1__ h; } ;
struct fuse_req {TYPE_5__ out; TYPE_3__ in; } ;
struct fuse_file {int nodeid; int fh; struct fuse_conn* fc; } ;
struct fuse_fallocate_in {int mode; scalar_t__ length; scalar_t__ offset; int fh; } ;
struct fuse_conn {int no_fallocate; } ;
typedef scalar_t__ loff_t ;
typedef int inarg ;
struct TYPE_7__ {int size; struct fuse_fallocate_in* value; } ;


 int ENOSYS ;
 long EOPNOTSUPP ;
 int FALLOC_FL_KEEP_SIZE ;
 int FALLOC_FL_PUNCH_HOLE ;
 int FUSE_FALLOCATE ;
 scalar_t__ IS_ERR (struct fuse_req*) ;
 int PTR_ERR (struct fuse_req*) ;
 struct fuse_req* fuse_get_req_nopages (struct fuse_conn*) ;
 int fuse_invalidate_attr (struct inode*) ;
 int fuse_put_request (struct fuse_conn*,struct fuse_req*) ;
 int fuse_release_nowrite (struct inode*) ;
 int fuse_request_send (struct fuse_conn*,struct fuse_req*) ;
 int fuse_set_nowrite (struct inode*) ;
 int fuse_write_update_size (struct inode*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int truncate_pagecache_range (struct inode*,scalar_t__,scalar_t__) ;

long fuse_file_fallocate(struct inode *inode, struct fuse_file *ff, int mode,
    loff_t offset, loff_t length)
{
 struct fuse_conn *fc = ff->fc;
 struct fuse_req *req;
 struct fuse_fallocate_in inarg = {
  .fh = ff->fh,
  .offset = offset,
  .length = length,
  .mode = mode
 };
 int err;
 bool lock_inode = !(mode & FALLOC_FL_KEEP_SIZE) ||
      (mode & FALLOC_FL_PUNCH_HOLE);

 if (fc->no_fallocate)
  return -EOPNOTSUPP;

 if (lock_inode) {
  mutex_lock(&inode->i_mutex);
  if (mode & FALLOC_FL_PUNCH_HOLE)
   fuse_set_nowrite(inode);
 }

 req = fuse_get_req_nopages(fc);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto out;
 }

 req->in.h.opcode = FUSE_FALLOCATE;
 req->in.h.nodeid = ff->nodeid;
 req->in.numargs = 1;
 req->in.args[0].size = sizeof(inarg);
 req->in.args[0].value = &inarg;
 fuse_request_send(fc, req);
 err = req->out.h.error;
 if (err == -ENOSYS) {
  fc->no_fallocate = 1;
  err = -EOPNOTSUPP;
 }
 fuse_put_request(fc, req);

 if (err)
  goto out;


 if (!(mode & FALLOC_FL_KEEP_SIZE))
  fuse_write_update_size(inode, offset + length);

 if (mode & FALLOC_FL_PUNCH_HOLE)
  truncate_pagecache_range(inode, offset, offset + length - 1);

 fuse_invalidate_attr(inode);

out:
 if (lock_inode) {
  if (mode & FALLOC_FL_PUNCH_HOLE)
   fuse_release_nowrite(inode);
  mutex_unlock(&inode->i_mutex);
 }

 return err;
}
