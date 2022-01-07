
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* name; TYPE_1__* pat; } ;
struct TYPE_6__ {int flgs; size_t plen; struct TYPE_6__* fow; int pend; int pstr; } ;
typedef TYPE_1__ PATTERN ;
typedef TYPE_2__ ARCHD ;


 int DIR_MTCH ;
 scalar_t__ cflag ;
 scalar_t__ fn_match (int ,char*,int *) ;
 scalar_t__ nflag ;
 scalar_t__ pat_sel (TYPE_2__*) ;
 TYPE_1__* pathead ;
 scalar_t__ strncmp (int ,char*,size_t) ;

int
pat_match(ARCHD *arcn)
{
 PATTERN *pt;

 arcn->pat = ((void*)0);





 if (pathead == ((void*)0)) {
  if (nflag && !cflag)
   return(-1);
  return(0);
 }




 pt = pathead;
 while (pt != ((void*)0)) {




  if (pt->flgs & DIR_MTCH) {






   if ((arcn->name[pt->plen] == '/') &&
       (strncmp(pt->pstr, arcn->name, pt->plen) == 0))
    break;
  } else if (fn_match(pt->pstr, arcn->name, &pt->pend) == 0)
   break;
  pt = pt->fow;
 }





 if (pt == ((void*)0))
  return(cflag ? 0 : 1);






 arcn->pat = pt;
 if (!cflag)
  return(0);

 if (pat_sel(arcn) < 0)
  return(-1);
 arcn->pat = ((void*)0);
 return(1);
}
