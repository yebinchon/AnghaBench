
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
get_segment_type (unsigned int p_type)
{
  const char *pt;
  switch (p_type)
    {
    case 131: pt = "NULL"; break;
    case 133: pt = "LOAD"; break;
    case 138: pt = "DYNAMIC"; break;
    case 134: pt = "INTERP"; break;
    case 132: pt = "NOTE"; break;
    case 129: pt = "SHLIB"; break;
    case 130: pt = "PHDR"; break;
    case 128: pt = "TLS"; break;
    case 137: pt = "EH_FRAME"; break;
    case 135: pt = "STACK"; break;
    case 136: pt = "RELRO"; break;
    default: pt = ((void*)0); break;
    }
  return pt;
}
