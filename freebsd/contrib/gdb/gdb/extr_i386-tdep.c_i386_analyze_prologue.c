
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i386_frame_cache {int dummy; } ;
typedef int CORE_ADDR ;


 int i386_analyze_frame_setup (int ,int ,struct i386_frame_cache*) ;
 int i386_analyze_register_saves (int ,int ,struct i386_frame_cache*) ;
 int i386_analyze_struct_return (int ,int ,struct i386_frame_cache*) ;
 int i386_follow_jump (int ) ;
 int i386_skip_probe (int ) ;

__attribute__((used)) static CORE_ADDR
i386_analyze_prologue (CORE_ADDR pc, CORE_ADDR current_pc,
         struct i386_frame_cache *cache)
{
  pc = i386_follow_jump (pc);
  pc = i386_analyze_struct_return (pc, current_pc, cache);
  pc = i386_skip_probe (pc);
  pc = i386_analyze_frame_setup (pc, current_pc, cache);
  return i386_analyze_register_saves (pc, current_pc, cache);
}
