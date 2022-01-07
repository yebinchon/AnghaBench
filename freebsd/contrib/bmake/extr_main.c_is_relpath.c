
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static int
is_relpath(const char *path)
{
 const char *cp;

 if (path[0] != '/')
  return TRUE;
 cp = path;
 do {
  cp = strstr(cp, "/.");
  if (!cp)
   break;
  cp += 2;
  if (cp[0] == '/' || cp[0] == '\0')
   return TRUE;
  else if (cp[0] == '.') {
   if (cp[1] == '/' || cp[1] == '\0')
    return TRUE;
  }
 } while (cp);
 return FALSE;
}
