
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_ver ;




 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
elf_version_str(unsigned int ver)
{
 static char s_ver[32];

 switch (ver) {
 case 128: return "EV_NONE";
 case 129: return "EV_CURRENT";
 }
 snprintf(s_ver, sizeof(s_ver), "<unknown: %#x>", ver);
 return (s_ver);
}
