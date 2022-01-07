
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
typedef scalar_t__ dev_t ;
struct TYPE_4__ {scalar_t__ dev; struct TYPE_4__* fow; int * list; } ;
typedef TYPE_1__ DEVT ;


 unsigned int D_TAB_SZ ;
 TYPE_1__** dtab ;
 scalar_t__ malloc (int) ;
 int paxwarn (int,char*) ;

__attribute__((used)) static DEVT *
chk_dev(dev_t dev, int add)
{
 DEVT *pt;
 u_int indx;

 if (dtab == ((void*)0))
  return(((void*)0));



 indx = ((unsigned)dev) % D_TAB_SZ;
 if ((pt = dtab[indx]) != ((void*)0)) {
  while ((pt != ((void*)0)) && (pt->dev != dev))
   pt = pt->fow;




  if (pt != ((void*)0))
   return(pt);
 }





 if (add == 0)
  return(((void*)0));






 if ((pt = (DEVT *)malloc(sizeof(DEVT))) == ((void*)0)) {
  paxwarn(1, "Device map table out of memory");
  return(((void*)0));
 }
 pt->dev = dev;
 pt->list = ((void*)0);
 pt->fow = dtab[indx];
 dtab[indx] = pt;
 return(pt);
}
