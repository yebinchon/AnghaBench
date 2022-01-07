
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;


 struct frame_id null_frame_id ;

__attribute__((used)) static void
legacy_saved_regs_this_id (struct frame_info *next_frame,
      void **this_prologue_cache,
      struct frame_id *id)
{





  (*id) = null_frame_id;
}
