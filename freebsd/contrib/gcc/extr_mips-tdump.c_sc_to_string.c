
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sc_t ;
__attribute__((used)) static const char *
sc_to_string (sc_t storage_class)
{
  switch(storage_class)
    {
    case 141: return "Nil";
    case 133: return "Text";
    case 145: return "Data";
    case 149: return "Bss";
    case 138: return "Register";
    case 151: return "Abs";
    case 132: return "Undefined";
    case 148: return "CdbLocal";
    case 150: return "Bits";
    case 147: return "CdbSystem";
    case 139: return "RegImage";
    case 144: return "Info";
    case 131: return "UserStruct";
    case 135: return "SData";
    case 137: return "SBss";
    case 140: return "RData";
    case 130: return "Var";
    case 146: return "Common";
    case 136: return "SCommon";
    case 129: return "VarRegister";
    case 128: return "Variant";
    case 134: return "SUndefined";
    case 143: return "Init";
    case 142: return "Max";
    }

  return "???";
}
