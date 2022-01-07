
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int ln_nlen; int ln_name; int nlen; int name; } ;
typedef TYPE_1__ ARCHD ;


 scalar_t__ PAX_HLK ;
 scalar_t__ PAX_HRG ;
 scalar_t__ fix_path (int ,int *,char*,int) ;

int
set_dest(ARCHD *arcn, char *dest_dir, int dir_len)
{
 if (fix_path(arcn->name, &(arcn->nlen), dest_dir, dir_len) < 0)
  return(-1);






 if ((arcn->type != PAX_HLK) && (arcn->type != PAX_HRG))
  return(0);

 if (fix_path(arcn->ln_name, &(arcn->ln_nlen), dest_dir, dir_len) < 0)
  return(-1);
 return(0);
}
