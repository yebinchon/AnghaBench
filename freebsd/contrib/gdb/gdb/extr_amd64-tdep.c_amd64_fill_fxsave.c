
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amd64_collect_fxsave (int ,int,char*) ;
 int current_regcache ;

void
amd64_fill_fxsave (char *fxsave, int regnum)
{
  amd64_collect_fxsave (current_regcache, regnum, fxsave);
}
