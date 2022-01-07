
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ uid; struct TYPE_7__* fow; } ;
typedef TYPE_2__ USRT ;
struct TYPE_6__ {scalar_t__ st_uid; } ;
struct TYPE_8__ {TYPE_1__ sb; } ;
typedef TYPE_3__ ARCHD ;


 unsigned int USR_TB_SZ ;
 TYPE_2__** usrtb ;

__attribute__((used)) static int
usr_match(ARCHD *arcn)
{
 USRT *pt;




 pt = usrtb[((unsigned)arcn->sb.st_uid) % USR_TB_SZ];
 while (pt != ((void*)0)) {
  if (pt->uid == arcn->sb.st_uid)
   return(0);
  pt = pt->fow;
 }




 return(1);
}
