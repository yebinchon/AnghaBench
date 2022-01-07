
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct frame_info {scalar_t__ unwind; int base_cache; int next; TYPE_1__* base; int prologue_cache; } ;
struct TYPE_2__ {scalar_t__ unwind; int (* this_base ) (int ,int *) ;} ;
typedef int CORE_ADDR ;


 scalar_t__ NORMAL_FRAME ;
 TYPE_1__* frame_base_find_by_frame (int ) ;
 scalar_t__ get_frame_type (struct frame_info*) ;
 int stub1 (int ,int *) ;
 int stub2 (int ,int *) ;

CORE_ADDR
get_frame_base_address (struct frame_info *fi)
{
  if (get_frame_type (fi) != NORMAL_FRAME)
    return 0;
  if (fi->base == ((void*)0))
    fi->base = frame_base_find_by_frame (fi->next);


  if (fi->base->unwind == fi->unwind)
    return fi->base->this_base (fi->next, &fi->prologue_cache);
  return fi->base->this_base (fi->next, &fi->base_cache);
}
