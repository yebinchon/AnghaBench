
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GIDC ;


 int GID_SZ ;
 scalar_t__ calloc (int ,int) ;
 int ** gidtb ;
 int paxwarn (int,char*) ;

int
gidtb_start(void)
{
 static int fail = 0;

 if (gidtb != ((void*)0))
  return(0);
 if (fail)
  return(-1);
 if ((gidtb = (GIDC **)calloc(GID_SZ, sizeof(GIDC *))) == ((void*)0)) {
  ++fail;
  paxwarn(1, "Unable to allocate memory for group id cache table");
  return(-1);
 }
 return(0);
}
