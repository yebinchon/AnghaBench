
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ RFmode ;
 scalar_t__ TARGET_HPUX ;
 scalar_t__ TFmode ;
 scalar_t__ TYPE_MODE (int ) ;
 scalar_t__ XFmode ;

__attribute__((used)) static const char *
ia64_mangle_fundamental_type (tree type)
{


  if (!TARGET_HPUX && TYPE_MODE (type) == TFmode)
    return "g";



  if (TYPE_MODE (type) == XFmode)
    return TARGET_HPUX ? "u9__float80" : "e";
  if (TYPE_MODE (type) == RFmode)
    return "u7__fpreg";
  return ((void*)0);
}
