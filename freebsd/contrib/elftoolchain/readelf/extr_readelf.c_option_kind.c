
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int s_kind ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
option_kind(uint8_t kind)
{
 static char s_kind[32];

 switch (kind) {
 case 131: return "NULL";
 case 129: return "REGINFO";
 case 138: return "EXCEPTIONS";
 case 130: return "PAD";
 case 133: return "HWPATCH";
 case 137: return "FILL";
 case 128: return "TAGS";
 case 135: return "HWAND";
 case 134: return "HWOR";
 case 136: return "GP_GROUP";
 case 132: return "IDENT";
 default:
  snprintf(s_kind, sizeof(s_kind), "<unknown: %u>", kind);
  return (s_kind);
 }
}
