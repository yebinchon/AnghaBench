
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_lun {TYPE_1__* lun_sep; } ;
typedef int ssize_t ;
struct TYPE_2__ {int sep_tg_pt_secondary_offline; } ;


 int ENODEV ;
 int atomic_read (int *) ;
 int sprintf (char*,char*,int) ;

ssize_t core_alua_show_offline_bit(struct se_lun *lun, char *page)
{
 if (!lun->lun_sep)
  return -ENODEV;

 return sprintf(page, "%d\n",
  atomic_read(&lun->lun_sep->sep_tg_pt_secondary_offline));
}
