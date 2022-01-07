
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_dev_stat_grps {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,unsigned long long) ;

__attribute__((used)) static ssize_t target_stat_scsi_lu_show_attr_lun(
 struct se_dev_stat_grps *sgrps, char *page)
{

 return snprintf(page, PAGE_SIZE, "%llu\n", (unsigned long long)0);
}
