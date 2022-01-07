
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int unlink (char const*) ;

int
unlink_if_ordinary (const char *name)
{
  struct stat st;

  if (lstat (name, &st) == 0
      && (S_ISREG (st.st_mode) || S_ISLNK (st.st_mode)))
    return unlink (name);

  return 1;
}
