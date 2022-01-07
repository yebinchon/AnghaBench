
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int DIR_SEPARATOR ;
 scalar_t__ IS_DIR_SEPARATOR (char) ;
 scalar_t__ S_ISDIR (int ) ;
 char* alloca (int) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
is_directory (const char *path1, bool linker)
{
  int len1;
  char *path;
  char *cp;
  struct stat st;



  len1 = strlen (path1);
  path = alloca (3 + len1);
  memcpy (path, path1, len1);
  cp = path + len1;
  if (!IS_DIR_SEPARATOR (cp[-1]))
    *cp++ = DIR_SEPARATOR;
  *cp++ = '.';
  *cp = '\0';



  if (linker
      && IS_DIR_SEPARATOR (path[0])
      && ((cp - path == 6
    && strncmp (path + 1, "lib", 3) == 0)
   || (cp - path == 10
       && strncmp (path + 1, "usr", 3) == 0
       && IS_DIR_SEPARATOR (path[4])
       && strncmp (path + 5, "lib", 3) == 0)))
    return 0;


  return (stat (path, &st) >= 0 && S_ISDIR (st.st_mode));
}
