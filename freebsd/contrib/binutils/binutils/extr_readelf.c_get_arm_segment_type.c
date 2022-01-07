
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
get_arm_segment_type (unsigned long type)
{
  switch (type)
    {
    case 128:
      return "EXIDX";
    default:
      break;
    }

  return ((void*)0);
}
