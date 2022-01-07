
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum attr_type { ____Placeholder_attr_type } attr_type ;


 int TYPE_UNKNOWN ;
 int get_attr_type (int ) ;
 scalar_t__ recog_memoized (int ) ;

__attribute__((used)) static enum attr_type
ia64_safe_type (rtx insn)
{
  if (recog_memoized (insn) >= 0)
    return get_attr_type (insn);
  else
    return TYPE_UNKNOWN;
}
