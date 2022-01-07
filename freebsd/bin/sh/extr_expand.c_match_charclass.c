
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wctype_t ;
typedef int wchar_t ;
typedef int name ;


 int iswctype (int ,scalar_t__) ;
 int memcpy (char*,char const*,int) ;
 char* strstr (char const*,char*) ;
 scalar_t__ wctype (char*) ;

__attribute__((used)) static int
match_charclass(const char *p, wchar_t chr, const char **end)
{
 char name[20];
 const char *nameend;
 wctype_t cclass;

 *end = ((void*)0);
 p++;
 nameend = strstr(p, ":]");
 if (nameend == ((void*)0) || (size_t)(nameend - p) >= sizeof(name) ||
     nameend == p)
  return 0;
 memcpy(name, p, nameend - p);
 name[nameend - p] = '\0';
 *end = nameend + 2;
 cclass = wctype(name);

 if (cclass == 0)
  return 0;
 return iswctype(chr, cclass);
}
