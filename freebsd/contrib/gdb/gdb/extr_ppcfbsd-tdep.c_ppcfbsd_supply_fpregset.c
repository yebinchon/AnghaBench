
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regset {int dummy; } ;
struct regcache {int dummy; } ;


 int ppcfbsd_supply_fpreg (void*,int) ;

__attribute__((used)) static void
ppcfbsd_supply_fpregset (const struct regset *regset,
    struct regcache * regcache,
    int regnum, void *fpset, size_t size)
{
  ppcfbsd_supply_fpreg (fpset, -1);
}
