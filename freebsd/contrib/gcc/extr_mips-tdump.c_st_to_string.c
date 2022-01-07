
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st_t ;
__attribute__((used)) static const char *
st_to_string (st_t symbol_type)
{
  switch(symbol_type)
    {
    case 140: return "Nil";
    case 145: return "Global";
    case 134: return "Static";
    case 138: return "Param";
    case 143: return "Local";
    case 144: return "Label";
    case 137: return "Proc";
    case 152: return "Block";
    case 150: return "End";
    case 141: return "Member";
    case 129: return "Typedef";
    case 147: return "File";
    case 136: return "RegReloc";
    case 146: return "Forward";
    case 133: return "StaticProc";
    case 151: return "Constant";
    case 135: return "StaticParam";





    case 132: return "String";
    case 139: return "Number";
    case 148: return "Expr";
    case 130: return "Type";
    case 142: return "Max";
    }

  return "???";
}
