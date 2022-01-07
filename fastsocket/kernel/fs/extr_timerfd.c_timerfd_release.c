
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timerfd_ctx {int rcu; int tmr; } ;
struct inode {int dummy; } ;
struct file {struct timerfd_ctx* private_data; } ;


 int call_rcu (int *,int ) ;
 int hrtimer_cancel (int *) ;
 int timerfd_ctx_rcu_free ;
 int timerfd_remove_cancel (struct timerfd_ctx*) ;

__attribute__((used)) static int timerfd_release(struct inode *inode, struct file *file)
{
 struct timerfd_ctx *ctx = file->private_data;

 timerfd_remove_cancel(ctx);
 hrtimer_cancel(&ctx->tmr);
 call_rcu(&ctx->rcu, timerfd_ctx_rcu_free);
 return 0;
}
