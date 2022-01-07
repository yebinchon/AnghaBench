
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ATDIR ;


 int A_TAB_SZ ;
 int ** atab ;
 scalar_t__ calloc (int ,int) ;
 int paxwarn (int,char*) ;

int
atdir_start(void)
{
 if (atab != ((void*)0))
  return(0);
  if ((atab = (ATDIR **)calloc(A_TAB_SZ, sizeof(ATDIR *))) == ((void*)0)) {
  paxwarn(1,"Cannot allocate space for directory access time table");
  return(-1);
 }
 return(0);
}
