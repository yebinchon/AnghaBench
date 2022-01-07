
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DEVT ;


 int D_TAB_SZ ;
 scalar_t__ calloc (int ,int) ;
 int ** dtab ;
 int paxwarn (int,char*) ;

int
dev_start(void)
{
 if (dtab != ((void*)0))
  return(0);
  if ((dtab = (DEVT **)calloc(D_TAB_SZ, sizeof(DEVT *))) == ((void*)0)) {
  paxwarn(1, "Cannot allocate memory for device mapping table");
  return(-1);
 }
 return(0);
}
