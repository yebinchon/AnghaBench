
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fuse_write_in {int lock_owner; int write_flags; int flags; } ;
struct TYPE_4__ {size_t size; } ;
struct TYPE_5__ {TYPE_1__ out; struct fuse_write_in in; } ;
struct TYPE_6__ {TYPE_2__ write; } ;
struct fuse_req {TYPE_3__ misc; } ;
struct fuse_io_priv {scalar_t__ async; struct file* file; } ;
struct fuse_file {struct fuse_conn* fc; } ;
struct fuse_conn {int dummy; } ;
struct file {int f_flags; struct fuse_file* private_data; } ;
typedef int loff_t ;
typedef int * fl_owner_t ;


 int FUSE_WRITE_LOCKOWNER ;
 size_t fuse_async_req_send (struct fuse_conn*,struct fuse_req*,size_t,struct fuse_io_priv*) ;
 int fuse_lock_owner_id (struct fuse_conn*,int *) ;
 int fuse_request_send (struct fuse_conn*,struct fuse_req*) ;
 int fuse_write_fill (struct fuse_req*,struct fuse_file*,int ,size_t) ;

__attribute__((used)) static size_t fuse_send_write(struct fuse_req *req, struct fuse_io_priv *io,
         loff_t pos, size_t count, fl_owner_t owner)
{
 struct file *file = io->file;
 struct fuse_file *ff = file->private_data;
 struct fuse_conn *fc = ff->fc;
 struct fuse_write_in *inarg = &req->misc.write.in;

 fuse_write_fill(req, ff, pos, count);
 inarg->flags = file->f_flags;
 if (owner != ((void*)0)) {
  inarg->write_flags |= FUSE_WRITE_LOCKOWNER;
  inarg->lock_owner = fuse_lock_owner_id(fc, owner);
 }

 if (io->async)
  return fuse_async_req_send(fc, req, count, io);

 fuse_request_send(fc, req);
 return req->misc.write.out.size;
}
