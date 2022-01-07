
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LKM_EXMODE ;
 int LKM_NLMODE ;
 int LKM_PRMODE ;

__attribute__((used)) static inline int user_highest_compat_lock_level(int level)
{
 int new_level = LKM_EXMODE;

 if (level == LKM_EXMODE)
  new_level = LKM_NLMODE;
 else if (level == LKM_PRMODE)
  new_level = LKM_PRMODE;
 return new_level;
}
