
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_top_tag ;


 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
top_tag(unsigned int tag)
{
 static char s_top_tag[32];

 switch (tag) {
 case 1: return "File Attributes";
 case 2: return "Section Attributes";
 case 3: return "Symbol Attributes";
 default:
  snprintf(s_top_tag, sizeof(s_top_tag), "Unknown tag: %u", tag);
  return (s_top_tag);
 }
}
