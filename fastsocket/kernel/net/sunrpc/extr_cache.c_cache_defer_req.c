
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_req {struct cache_deferred_req* (* defer ) (struct cache_req*) ;scalar_t__ thread_wait; } ;
struct cache_head {int flags; } ;
struct cache_deferred_req {int dummy; } ;


 int CACHE_PENDING ;
 int cache_limit_defers () ;
 int cache_revisit_request (struct cache_head*) ;
 int cache_wait_req (struct cache_req*,struct cache_head*) ;
 int setup_deferral (struct cache_deferred_req*,struct cache_head*,int) ;
 struct cache_deferred_req* stub1 (struct cache_req*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool cache_defer_req(struct cache_req *req, struct cache_head *item)
{
 struct cache_deferred_req *dreq;

 if (req->thread_wait) {
  cache_wait_req(req, item);
  if (!test_bit(CACHE_PENDING, &item->flags))
   return 0;
 }
 dreq = req->defer(req);
 if (dreq == ((void*)0))
  return 0;
 setup_deferral(dreq, item, 1);
 if (!test_bit(CACHE_PENDING, &item->flags))



  cache_revisit_request(item);

 cache_limit_defers();
 return 1;
}
