
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* args; } ;
struct fuse_read_in {int lock_owner; int read_flags; } ;
struct TYPE_5__ {struct fuse_read_in in; } ;
struct TYPE_6__ {TYPE_1__ read; } ;
struct fuse_req {TYPE_4__ out; TYPE_2__ misc; } ;
struct fuse_io_priv {scalar_t__ async; struct file* file; } ;
struct fuse_file {struct fuse_conn* fc; } ;
struct fuse_conn {int dummy; } ;
struct file {struct fuse_file* private_data; } ;
typedef int loff_t ;
typedef int * fl_owner_t ;
struct TYPE_7__ {size_t size; } ;


 int FUSE_READ ;
 int FUSE_READ_LOCKOWNER ;
 size_t fuse_async_req_send (struct fuse_conn*,struct fuse_req*,size_t,struct fuse_io_priv*) ;
 int fuse_lock_owner_id (struct fuse_conn*,int *) ;
 int fuse_read_fill (struct fuse_req*,struct file*,int ,size_t,int ) ;
 int fuse_request_send (struct fuse_conn*,struct fuse_req*) ;

__attribute__((used)) static size_t fuse_send_read(struct fuse_req *req, struct fuse_io_priv *io,
        loff_t pos, size_t count, fl_owner_t owner)
{
 struct file *file = io->file;
 struct fuse_file *ff = file->private_data;
 struct fuse_conn *fc = ff->fc;

 fuse_read_fill(req, file, pos, count, FUSE_READ);
 if (owner != ((void*)0)) {
  struct fuse_read_in *inarg = &req->misc.read.in;

  inarg->read_flags |= FUSE_READ_LOCKOWNER;
  inarg->lock_owner = fuse_lock_owner_id(fc, owner);
 }

 if (io->async)
  return fuse_async_req_send(fc, req, count, io);

 fuse_request_send(fc, req);
 return req->out.args[0].size;
}
