
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GIDC ;


 int GNM_SZ ;
 scalar_t__ calloc (int ,int) ;
 int ** grptb ;
 int paxwarn (int,char*) ;

int
grptb_start(void)
{
 static int fail = 0;

 if (grptb != ((void*)0))
  return(0);
 if (fail)
  return(-1);
 if ((grptb = (GIDC **)calloc(GNM_SZ, sizeof(GIDC *))) == ((void*)0)) {
  ++fail;
  paxwarn(1,"Unable to allocate memory for group name cache table");
  return(-1);
 }
 return(0);
}
