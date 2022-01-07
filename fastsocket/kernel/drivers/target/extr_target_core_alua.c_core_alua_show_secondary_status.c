
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_lun {TYPE_1__* lun_sep; } ;
typedef int ssize_t ;
struct TYPE_2__ {int sep_tg_pt_secondary_stat; } ;


 int sprintf (char*,char*,int) ;

ssize_t core_alua_show_secondary_status(
 struct se_lun *lun,
 char *page)
{
 return sprintf(page, "%d\n", lun->lun_sep->sep_tg_pt_secondary_stat);
}
