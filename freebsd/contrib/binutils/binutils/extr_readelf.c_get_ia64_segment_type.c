
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
get_ia64_segment_type (unsigned long type)
{
  switch (type)
    {
    case 132: return "IA_64_ARCHEXT";
    case 128: return "IA_64_UNWIND";
    case 133: return "HP_TLS";
    case 130: return "HP_OPT_ANNOT";
    case 131: return "HP_HSL_ANNOT";
    case 129: return "HP_STACK";
    default:
      break;
    }

  return ((void*)0);
}
