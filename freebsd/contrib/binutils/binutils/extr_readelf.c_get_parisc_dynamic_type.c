
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
get_parisc_dynamic_type (unsigned long type)
{
  switch (type)
    {
    case 136: return "HP_LOAD_MAP";
    case 146: return "HP_DLD_FLAGS";
    case 145: return "HP_DLD_HOOK";
    case 131: return "HP_UX10_INIT";
    case 130: return "HP_UX10_INITSZ";
    case 134: return "HP_PREINIT";
    case 133: return "HP_PREINITSZ";
    case 135: return "HP_NEEDED";
    case 132: return "HP_TIME_STAMP";
    case 148: return "HP_CHECKSUM";
    case 139: return "HP_GST_SIZE";
    case 138: return "HP_GST_VERSION";
    case 140: return "HP_GST_HASHVAL";
    case 144: return "HP_GST_EPLTREL";
    case 143: return "HP_GST_EPLTRELSZ";
    case 142: return "HP_FILTERED";
    case 141: return "HP_FILTER_TLS";
    case 147: return "HP_COMPAT_FILTERED";
    case 137: return "HP_LAZYLOAD";
    case 149: return "HP_BIND_NOW_COUNT";
    case 129: return "PLT";
    case 128: return "PLT_SIZE";
    case 151: return "DLT";
    case 150: return "DLT_SIZE";
    default:
      return ((void*)0);
    }
}
