
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_regcache ;
 int i387_collect_fxsave (int ,int,void*) ;

void
i387_fill_fxsave (void *fxsave, int regnum)
{
  i387_collect_fxsave (current_regcache, regnum, fxsave);
}
