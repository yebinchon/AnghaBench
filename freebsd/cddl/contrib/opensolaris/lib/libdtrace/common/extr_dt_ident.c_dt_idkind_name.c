
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
const char *
dt_idkind_name(uint_t kind)
{
 switch (kind) {
 case 138: return ("associative array");
 case 131: return ("scalar");
 case 132: return ("pointer");
 case 136: return ("function");
 case 140: return ("aggregation");
 case 139: return ("aggregating function");
 case 141: return ("tracing function");
 case 128: return ("translated data");
 case 129: return ("pointer to translated data");
 case 130: return ("external symbol reference");
 case 137: return ("enumerator");
 case 135: return ("#pragma attributes");
 case 134: return ("#pragma binding");
 case 133: return ("probe definition");
 default: return ("<?>");
 }
}
