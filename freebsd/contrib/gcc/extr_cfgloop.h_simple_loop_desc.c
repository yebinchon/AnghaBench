
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niter_desc {int dummy; } ;
struct loop {scalar_t__ aux; } ;



__attribute__((used)) static inline struct niter_desc *
simple_loop_desc (struct loop *loop)
{
  return (struct niter_desc *) loop->aux;
}
