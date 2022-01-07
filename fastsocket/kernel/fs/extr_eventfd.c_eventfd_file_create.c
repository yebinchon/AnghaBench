
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct eventfd_ctx {unsigned int count; int flags; int wqh; int kref; } ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ EFD_CLOEXEC ;
 int EFD_FLAGS_SET ;
 scalar_t__ EFD_NONBLOCK ;
 int EFD_SHARED_FCNTL_FLAGS ;
 int EINVAL ;
 int ENOMEM ;
 struct file* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct file*) ;
 scalar_t__ O_CLOEXEC ;
 scalar_t__ O_NONBLOCK ;
 struct file* anon_inode_getfile (char*,int *,struct eventfd_ctx*,int) ;
 int eventfd_fops ;
 int eventfd_free_ctx (struct eventfd_ctx*) ;
 int init_waitqueue_head (int *) ;
 struct eventfd_ctx* kmalloc (int,int ) ;
 int kref_init (int *) ;

struct file *eventfd_file_create(unsigned int count, int flags)
{
 struct file *file;
 struct eventfd_ctx *ctx;


 BUILD_BUG_ON(EFD_CLOEXEC != O_CLOEXEC);
 BUILD_BUG_ON(EFD_NONBLOCK != O_NONBLOCK);

 if (flags & ~EFD_FLAGS_SET)
  return ERR_PTR(-EINVAL);

 ctx = kmalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return ERR_PTR(-ENOMEM);

 kref_init(&ctx->kref);
 init_waitqueue_head(&ctx->wqh);
 ctx->count = count;
 ctx->flags = flags;

 file = anon_inode_getfile("[eventfd]", &eventfd_fops, ctx,
      flags & EFD_SHARED_FCNTL_FLAGS);
 if (IS_ERR(file))
  eventfd_free_ctx(ctx);

 return file;
}
