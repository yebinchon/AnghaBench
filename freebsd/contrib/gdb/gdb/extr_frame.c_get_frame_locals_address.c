
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct frame_info {scalar_t__ unwind; void* prologue_cache; void* base_cache; int next; TYPE_1__* base; } ;
struct TYPE_2__ {scalar_t__ unwind; int (* this_locals ) (int ,void**) ;} ;
typedef int CORE_ADDR ;


 scalar_t__ NORMAL_FRAME ;
 TYPE_1__* frame_base_find_by_frame (int ) ;
 scalar_t__ get_frame_type (struct frame_info*) ;
 int stub1 (int ,void**) ;

CORE_ADDR
get_frame_locals_address (struct frame_info *fi)
{
  void **cache;
  if (get_frame_type (fi) != NORMAL_FRAME)
    return 0;

  if (fi->base == ((void*)0))
    fi->base = frame_base_find_by_frame (fi->next);


  if (fi->base->unwind == fi->unwind)
    cache = &fi->prologue_cache;
  else
    cache = &fi->base_cache;
  return fi->base->this_locals (fi->next, cache);
}
