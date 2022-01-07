
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
get_ia64_dynamic_type (unsigned long type)
{
  switch (type)
    {
    case 128: return "IA_64_PLT_RESERVE";
    default:
      return ((void*)0);
    }
}
