
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
get_arm_section_type_name (unsigned int sh_type)
{
  switch (sh_type)
    {
    case 129:
      return "ARM_EXIDX";
    case 128:
      return "ARM_PREEMPTMAP";
    case 130:
      return "ARM_ATTRIBUTES";
    default:
      break;
    }
  return ((void*)0);
}
