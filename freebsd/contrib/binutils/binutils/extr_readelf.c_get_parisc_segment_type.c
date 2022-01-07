
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
get_parisc_segment_type (unsigned long type)
{
  switch (type)
    {
    case 131: return "HP_TLS";
    case 142: return "HP_CORE_NONE";
    case 137: return "HP_CORE_VERSION";
    case 145: return "HP_CORE_KERNEL";
    case 146: return "HP_CORE_COMM";
    case 141: return "HP_CORE_PROC";
    case 144: return "HP_CORE_LOADABLE";
    case 139: return "HP_CORE_STACK";
    case 140: return "HP_CORE_SHM";
    case 143: return "HP_CORE_MMF";
    case 133: return "HP_PARALLEL";
    case 136: return "HP_FASTBIND";
    case 134: return "HP_OPT_ANNOT";
    case 135: return "HP_HSL_ANNOT";
    case 132: return "HP_STACK";
    case 138: return "HP_CORE_UTSNAME";
    case 130: return "PARISC_ARCHEXT";
    case 129: return "PARISC_UNWIND";
    case 128: return "PARISC_WEAKORDER";
    default:
      break;
    }

  return ((void*)0);
}
