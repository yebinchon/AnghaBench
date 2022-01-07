
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_head {int dummy; } ;
struct cache_detail {int dummy; } ;


 int expkey_request ;
 int sunrpc_cache_pipe_upcall (struct cache_detail*,struct cache_head*,int ) ;

__attribute__((used)) static int expkey_upcall(struct cache_detail *cd, struct cache_head *h)
{
 return sunrpc_cache_pipe_upcall(cd, h, expkey_request);
}
