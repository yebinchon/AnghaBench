
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 scalar_t__ lstat (char*,struct stat*) ;

__attribute__((used)) static int
f_exists(char *arg)
{
  struct stat buf;

  if (lstat(arg, &buf) < 0)
    return (0);
  else
    return (1);
}
