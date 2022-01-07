
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NAMT ;


 int N_TAB_SZ ;
 scalar_t__ calloc (int ,int) ;
 int ** ntab ;
 int paxwarn (int,char*) ;

int
name_start(void)
{
 if (ntab != ((void*)0))
  return(0);
  if ((ntab = (NAMT **)calloc(N_TAB_SZ, sizeof(NAMT *))) == ((void*)0)) {
  paxwarn(1, "Cannot allocate memory for interactive rename table");
  return(-1);
 }
 return(0);
}
