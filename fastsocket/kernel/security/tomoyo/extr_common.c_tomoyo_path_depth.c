
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static int tomoyo_path_depth(const char *pathname)
{
 int i = 0;

 if (pathname) {
  const char *ep = pathname + strlen(pathname);
  if (pathname < ep--) {
   if (*ep != '/')
    i++;
   while (pathname <= ep)
    if (*ep-- == '/')
     i += 2;
  }
 }
 return i;
}
