
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ia64_frame_cache {scalar_t__ bsp; scalar_t__ cfm; scalar_t__ after_prologue; scalar_t__ base; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ examine_prologue (scalar_t__,scalar_t__,int ,struct ia64_frame_cache*) ;

CORE_ADDR
ia64_skip_prologue (CORE_ADDR pc)
{
  struct ia64_frame_cache cache;
  cache.base = 0;
  cache.after_prologue = 0;
  cache.cfm = 0;
  cache.bsp = 0;


  return examine_prologue (pc, pc+1024, 0, &cache);
}
