
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef int HOST_WIDE_INT ;


 int INT_MEM_OFFSET (int ) ;
 scalar_t__ MEM_ATTRS (int ) ;
 int MEM_EXPR (int ) ;
 scalar_t__ MEM_P (int ) ;
 scalar_t__ REG_ATTRS (int ) ;
 int REG_EXPR (int ) ;
 int REG_OFFSET (int ) ;
 scalar_t__ REG_P (int ) ;

__attribute__((used)) static bool
vt_get_decl_and_offset (rtx rtl, tree *declp, HOST_WIDE_INT *offsetp)
{
  if (REG_P (rtl))
    {
      if (REG_ATTRS (rtl))
 {
   *declp = REG_EXPR (rtl);
   *offsetp = REG_OFFSET (rtl);
   return 1;
 }
    }
  else if (MEM_P (rtl))
    {
      if (MEM_ATTRS (rtl))
 {
   *declp = MEM_EXPR (rtl);
   *offsetp = INT_MEM_OFFSET (rtl);
   return 1;
 }
    }
  return 0;
}
