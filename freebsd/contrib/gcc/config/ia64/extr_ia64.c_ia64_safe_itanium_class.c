
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum attr_itanium_class { ____Placeholder_attr_itanium_class } attr_itanium_class ;


 int ITANIUM_CLASS_UNKNOWN ;
 int get_attr_itanium_class (int ) ;
 scalar_t__ recog_memoized (int ) ;

__attribute__((used)) static enum attr_itanium_class
ia64_safe_itanium_class (rtx insn)
{
  if (recog_memoized (insn) >= 0)
    return get_attr_itanium_class (insn);
  else
    return ITANIUM_CLASS_UNKNOWN;
}
