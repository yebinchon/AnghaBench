
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct amd64_frame_cache {int base; } ;
typedef int CORE_ADDR ;


 struct amd64_frame_cache* amd64_frame_cache (struct frame_info*,void**) ;

__attribute__((used)) static CORE_ADDR
amd64_frame_base_address (struct frame_info *next_frame, void **this_cache)
{
  struct amd64_frame_cache *cache =
    amd64_frame_cache (next_frame, this_cache);

  return cache->base;
}
