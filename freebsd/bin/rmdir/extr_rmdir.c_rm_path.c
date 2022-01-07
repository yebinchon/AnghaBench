
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;
 scalar_t__ rmdir (char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 scalar_t__ vflag ;
 int warn (char*,char*) ;

__attribute__((used)) static int
rm_path(char *path)
{
 char *p;

 p = path + strlen(path);
 while (--p > path && *p == '/')
  ;
 *++p = '\0';
 while ((p = strrchr(path, '/')) != ((void*)0)) {

  while (--p >= path && *p == '/')
   ;
  *++p = '\0';
  if (p == path)
   break;

  if (rmdir(path) < 0) {
   warn("%s", path);
   return (1);
  }
  if (vflag)
   printf("%s\n", path);
 }

 return (0);
}
