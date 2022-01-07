
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UIDC ;


 int UID_SZ ;
 scalar_t__ calloc (int ,int) ;
 int paxwarn (int,char*) ;
 int ** uidtb ;

int
uidtb_start(void)
{
 static int fail = 0;

 if (uidtb != ((void*)0))
  return(0);
 if (fail)
  return(-1);
 if ((uidtb = (UIDC **)calloc(UID_SZ, sizeof(UIDC *))) == ((void*)0)) {
  ++fail;
  paxwarn(1, "Unable to allocate memory for user id cache table");
  return(-1);
 }
 return(0);
}
