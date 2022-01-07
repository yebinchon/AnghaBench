
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
struct amd64_frame_cache {scalar_t__ base; } ;


 struct amd64_frame_cache* amd64_sigtramp_frame_cache (struct frame_info*,void**) ;
 struct frame_id frame_id_build (scalar_t__,int ) ;
 int frame_pc_unwind (struct frame_info*) ;

__attribute__((used)) static void
amd64_sigtramp_frame_this_id (struct frame_info *next_frame,
         void **this_cache, struct frame_id *this_id)
{
  struct amd64_frame_cache *cache =
    amd64_sigtramp_frame_cache (next_frame, this_cache);

  (*this_id) = frame_id_build (cache->base + 16, frame_pc_unwind (next_frame));
}
