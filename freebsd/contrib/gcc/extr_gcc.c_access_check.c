
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 int X_OK ;
 int access (char const*,int) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static int
access_check (const char *name, int mode)
{
  if (mode == X_OK)
    {
      struct stat st;

      if (stat (name, &st) < 0
   || S_ISDIR (st.st_mode))
 return -1;
    }

  return access (name, mode);
}
