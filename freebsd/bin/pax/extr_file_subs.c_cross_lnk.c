
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int name; int sb; int org_name; } ;
typedef TYPE_1__ ARCHD ;


 scalar_t__ PAX_DIR ;
 int mk_link (int ,int *,int ,int) ;

int
cross_lnk(ARCHD *arcn)
{





 if (arcn->type == PAX_DIR)
  return(1);
 return(mk_link(arcn->org_name, &(arcn->sb), arcn->name, 1));
}
