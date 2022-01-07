
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Boolean ;


 int FALSE ;
 int IsInclude (char const*,int ) ;
 int TRUE ;
 scalar_t__ isspace (unsigned char) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static Boolean
IsSysVInclude(const char *line)
{
 const char *p;

 if (!IsInclude(line, TRUE))
  return FALSE;


 for (p = line; (p = strchr(p, ':')) != ((void*)0);) {
  if (*++p == '\0') {

   return FALSE;
  }
  if (*p == ':' || isspace((unsigned char)*p)) {

   return FALSE;
  }
 }
 return TRUE;
}
