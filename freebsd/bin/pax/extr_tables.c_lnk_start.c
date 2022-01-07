
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRDLNK ;


 int L_TAB_SZ ;
 scalar_t__ calloc (int ,int) ;
 int ** ltab ;
 int paxwarn (int,char*) ;

int
lnk_start(void)
{
 if (ltab != ((void*)0))
  return(0);
  if ((ltab = (HRDLNK **)calloc(L_TAB_SZ, sizeof(HRDLNK *))) == ((void*)0)) {
  paxwarn(1, "Cannot allocate memory for hard link table");
  return(-1);
 }
 return(0);
}
