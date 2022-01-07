
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stat {int st_rdev; int st_mode; } ;


 int S_ISBLK (int ) ;
 scalar_t__ sys_newstat (char*,struct stat*) ;

__attribute__((used)) static inline u32 bstat(char *name)
{
 struct stat stat;
 if (sys_newstat(name, &stat) != 0)
  return 0;
 if (!S_ISBLK(stat.st_mode))
  return 0;
 return stat.st_rdev;
}
