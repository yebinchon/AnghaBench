
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int file; } ;
struct splice_desc {int pos; int len; TYPE_1__ u; } ;
struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int offset; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* confirm ) (struct pipe_inode_info*,struct pipe_buffer*) ;int (* unmap ) (struct pipe_inode_info*,struct pipe_buffer*,void*) ;void* (* map ) (struct pipe_inode_info*,struct pipe_buffer*,int ) ;} ;


 int kernel_write (int ,void*,int ,int ) ;
 int stub1 (struct pipe_inode_info*,struct pipe_buffer*) ;
 void* stub2 (struct pipe_inode_info*,struct pipe_buffer*,int ) ;
 int stub3 (struct pipe_inode_info*,struct pipe_buffer*,void*) ;

__attribute__((used)) static int write_pipe_buf(struct pipe_inode_info *pipe, struct pipe_buffer *buf,
     struct splice_desc *sd)
{
 int ret;
 void *data;

 ret = buf->ops->confirm(pipe, buf);
 if (ret)
  return ret;

 data = buf->ops->map(pipe, buf, 0);
 ret = kernel_write(sd->u.file, data + buf->offset, sd->len, sd->pos);
 buf->ops->unmap(pipe, buf, data);

 return ret;
}
