
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventfd_ctx {int dummy; } ;


 int kfree (struct eventfd_ctx*) ;

__attribute__((used)) static void eventfd_free_ctx(struct eventfd_ctx *ctx)
{
 kfree(ctx);
}
