
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ARCHD ;


 scalar_t__ grp_match (int *) ;
 int * grptb ;
 int * trhead ;
 scalar_t__ trng_match (int *) ;
 scalar_t__ usr_match (int *) ;
 int * usrtb ;

int
sel_chk(ARCHD *arcn)
{
 if (((usrtb != ((void*)0)) && usr_match(arcn)) ||
     ((grptb != ((void*)0)) && grp_match(arcn)) ||
     ((trhead != ((void*)0)) && trng_match(arcn)))
  return(1);
 return(0);
}
