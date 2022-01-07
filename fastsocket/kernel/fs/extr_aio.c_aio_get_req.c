
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kioctx {int dummy; } ;
struct kiocb {int dummy; } ;


 struct kiocb* __aio_get_req (struct kioctx*) ;
 int aio_fput_routine (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct kiocb *aio_get_req(struct kioctx *ctx)
{
 struct kiocb *req;




 req = __aio_get_req(ctx);
 if (unlikely(((void*)0) == req)) {
  aio_fput_routine(((void*)0));
  req = __aio_get_req(ctx);
 }
 return req;
}
