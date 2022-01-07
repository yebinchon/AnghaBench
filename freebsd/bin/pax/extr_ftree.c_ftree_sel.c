
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int refcnt; } ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ ARCHD ;


 int FTS_SKIP ;
 scalar_t__ PAX_DIR ;
 int dflag ;
 TYPE_3__* ftcur ;
 int * ftent ;
 int ftree_skip ;
 int fts_set (int ,int *,int ) ;
 int ftsp ;
 scalar_t__ nflag ;

void
ftree_sel(ARCHD *arcn)
{





 if (ftcur != ((void*)0))
  ftcur->refcnt = 1;







 if (nflag)
  ftree_skip = 1;

 if (!dflag || (arcn->type != PAX_DIR))
  return;

 if (ftent != ((void*)0))
  (void)fts_set(ftsp, ftent, FTS_SKIP);
}
