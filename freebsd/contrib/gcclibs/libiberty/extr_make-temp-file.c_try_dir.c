
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_OK ;
 int W_OK ;
 int X_OK ;
 scalar_t__ access (char const*,int) ;

__attribute__((used)) static inline const char *
try_dir (const char *dir, const char *base)
{
  if (base != 0)
    return base;
  if (dir != 0
      && access (dir, R_OK | W_OK | X_OK) == 0)
    return dir;
  return 0;
}
