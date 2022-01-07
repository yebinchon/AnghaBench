
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ init_one_libfunc (char*) ;
 scalar_t__ mcount_func_rtx ;

__attribute__((used)) static rtx
gen_mcount_func_rtx (void)
{
  if (!mcount_func_rtx)
    mcount_func_rtx = init_one_libfunc ("_mcount");
  return mcount_func_rtx;
}
