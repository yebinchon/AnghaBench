
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
get_ppc64_dynamic_type (unsigned long type)
{
  switch (type)
    {
    case 130: return "PPC64_GLINK";
    case 129: return "PPC64_OPD";
    case 128: return "PPC64_OPDSZ";
    default:
      return ((void*)0);
    }
}
