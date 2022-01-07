
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char const*,char*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static const char *guess_type_by_name(const char *fname, const char *fallback)
{
 const char *s;

 s = strrchr(fname, '.');
 if (s == ((void*)0))
  return fallback;
 if (!strcasecmp(s, ".dts"))
  return "dts";
 if (!strcasecmp(s, ".dtb"))
  return "dtb";
 return fallback;
}
