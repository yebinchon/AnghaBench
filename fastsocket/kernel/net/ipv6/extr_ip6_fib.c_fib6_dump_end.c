
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_callback {int* args; void* done; } ;
struct fib6_walker_t {int dummy; } ;


 int fib6_walker_unlink (struct fib6_walker_t*) ;
 int kfree (struct fib6_walker_t*) ;

__attribute__((used)) static void fib6_dump_end(struct netlink_callback *cb)
{
 struct fib6_walker_t *w = (void*)cb->args[2];

 if (w) {
  if (cb->args[4]) {
   cb->args[4] = 0;
   fib6_walker_unlink(w);
  }
  cb->args[2] = 0;
  kfree(w);
 }
 cb->done = (void*)cb->args[3];
 cb->args[1] = 3;
}
