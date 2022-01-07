
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ia64_frame_cache {scalar_t__ base; int bsp; int pc; } ;
struct frame_info {int dummy; } ;
struct frame_id {int stack_addr; int code_addr; } ;


 int fprintf_unfiltered (int ,char*,int ,int ,int ,struct frame_info*) ;
 struct frame_id frame_id_build_special (scalar_t__,int ,int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 struct ia64_frame_cache* ia64_frame_cache (struct frame_info*,void**) ;
 int paddr_nz (int ) ;

__attribute__((used)) static void
ia64_frame_this_id (struct frame_info *next_frame, void **this_cache,
      struct frame_id *this_id)
{
  struct ia64_frame_cache *cache =
    ia64_frame_cache (next_frame, this_cache);


  if (cache->base == 0)
    return;

  (*this_id) = frame_id_build_special (cache->base, cache->pc, cache->bsp);
  if (gdbarch_debug >= 1)
    fprintf_unfiltered (gdb_stdlog,
   "regular frame id: code 0x%s, stack 0x%s, special 0x%s, next_frame %p\n",
   paddr_nz (this_id->code_addr),
   paddr_nz (this_id->stack_addr),
   paddr_nz (cache->bsp), next_frame);
}
