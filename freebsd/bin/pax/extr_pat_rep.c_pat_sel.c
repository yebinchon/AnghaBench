
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; TYPE_1__* pat; int name; } ;
struct TYPE_6__ {int flgs; char* pend; char* pstr; int plen; struct TYPE_6__* fow; } ;
typedef TYPE_1__ PATTERN ;
typedef TYPE_2__ ARCHD ;


 int DIR_MTCH ;
 int MTCH ;
 scalar_t__ PAX_DIR ;
 int dflag ;
 int free (TYPE_1__*) ;
 int nflag ;
 TYPE_1__* pathead ;
 int paxwarn (int,char*) ;
 char* strdup (int ) ;
 int strlen (char*) ;

int
pat_sel(ARCHD *arcn)
{
 PATTERN *pt;
 PATTERN **ppt;
 int len;




 if ((pathead == ((void*)0)) || ((pt = arcn->pat) == ((void*)0)))
  return(0);





 if (!nflag) {
  pt->flgs |= MTCH;
  return(0);
 }
 if (pt->flgs & DIR_MTCH)
  return(0);

 if (!dflag && ((pt->pend != ((void*)0)) || (arcn->type == PAX_DIR))) {
  if (pt->pend != ((void*)0))
   *pt->pend = '\0';

  if ((pt->pstr = strdup(arcn->name)) == ((void*)0)) {
   paxwarn(1, "Pattern select out of memory");
   if (pt->pend != ((void*)0))
    *pt->pend = '/';
   pt->pend = ((void*)0);
   return(-1);
  }




  if (pt->pend != ((void*)0)) {
   *pt->pend = '/';
   pt->pend = ((void*)0);
  }
  pt->plen = strlen(pt->pstr);




  len = pt->plen - 1;
  if (*(pt->pstr + len) == '/') {
   *(pt->pstr + len) = '\0';
   pt->plen = len;
  }
  pt->flgs = DIR_MTCH | MTCH;
  arcn->pat = pt;
  return(0);
 }
 pt = pathead;
 ppt = &pathead;
 while ((pt != ((void*)0)) && (pt != arcn->pat)) {
  ppt = &(pt->fow);
  pt = pt->fow;
 }

 if (pt == ((void*)0)) {



  paxwarn(1, "Pattern list inconsistent");
  return(-1);
 }
 *ppt = pt->fow;
 free(pt);
 arcn->pat = ((void*)0);
 return(0);
}
