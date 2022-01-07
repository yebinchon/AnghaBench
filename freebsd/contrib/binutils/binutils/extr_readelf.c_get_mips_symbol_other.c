
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
get_mips_symbol_other (unsigned int other)
{
  switch (other)
    {
    case 128: return "OPTIONAL";
    case 129: return "MIPS16";
    default: return ((void*)0);
    }
}
