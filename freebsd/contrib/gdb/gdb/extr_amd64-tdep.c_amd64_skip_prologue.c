
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd64_frame_cache {scalar_t__ frameless_p; } ;
typedef int CORE_ADDR ;


 int amd64_analyze_prologue (int ,int,struct amd64_frame_cache*) ;

__attribute__((used)) static CORE_ADDR
amd64_skip_prologue (CORE_ADDR start_pc)
{
  struct amd64_frame_cache cache;
  CORE_ADDR pc;

  pc = amd64_analyze_prologue (start_pc, 0xffffffffffffffff, &cache);
  if (cache.frameless_p)
    return start_pc;

  return pc;
}
