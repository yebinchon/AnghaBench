
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ st_gid; } ;
struct TYPE_8__ {TYPE_1__ sb; } ;
struct TYPE_7__ {scalar_t__ gid; struct TYPE_7__* fow; } ;
typedef TYPE_2__ GRPT ;
typedef TYPE_3__ ARCHD ;


 unsigned int GRP_TB_SZ ;
 TYPE_2__** grptb ;

__attribute__((used)) static int
grp_match(ARCHD *arcn)
{
 GRPT *pt;




 pt = grptb[((unsigned)arcn->sb.st_gid) % GRP_TB_SZ];
 while (pt != ((void*)0)) {
  if (pt->gid == arcn->sb.st_gid)
   return(0);
  pt = pt->fow;
 }




 return(1);
}
