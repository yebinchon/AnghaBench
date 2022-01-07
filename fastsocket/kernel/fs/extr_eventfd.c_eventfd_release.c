
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct eventfd_ctx* private_data; } ;
struct eventfd_ctx {int wqh; } ;


 int POLLHUP ;
 int eventfd_ctx_put (struct eventfd_ctx*) ;
 int wake_up_poll (int *,int ) ;

__attribute__((used)) static int eventfd_release(struct inode *inode, struct file *file)
{
 struct eventfd_ctx *ctx = file->private_data;

 wake_up_poll(&ctx->wqh, POLLHUP);
 eventfd_ctx_put(ctx);
 return 0;
}
