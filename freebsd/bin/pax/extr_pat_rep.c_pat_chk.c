
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flgs; char* pstr; struct TYPE_3__* fow; } ;
typedef TYPE_1__ PATTERN ;


 int MTCH ;
 int fprintf (int ,char*,char*) ;
 TYPE_1__* pathead ;
 int paxwarn (int,char*) ;
 int stderr ;

void
pat_chk(void)
{
 PATTERN *pt;
 int wban = 0;





 for (pt = pathead; pt != ((void*)0); pt = pt->fow) {
  if (pt->flgs & MTCH)
   continue;
  if (!wban) {
   paxwarn(1, "WARNING! These patterns were not matched:");
   ++wban;
  }
  (void)fprintf(stderr, "%s\n", pt->pstr);
 }
}
