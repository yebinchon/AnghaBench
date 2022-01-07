
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LKM_EXMODE ;
 int LKM_NLMODE ;
 int LKM_PRMODE ;

__attribute__((used)) static inline int dlm_lock_compatible(int existing, int request)
{

 if (request == LKM_NLMODE ||
     existing == LKM_NLMODE)
  return 1;


 if (request == LKM_EXMODE)
  return 0;


 if (existing == LKM_PRMODE)
  return 1;

 return 0;
}
