
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pr_generation; } ;
struct se_device {TYPE_1__ t10_pr; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t target_core_dev_pr_show_attr_res_pr_generation(
  struct se_device *dev, char *page)
{
 return sprintf(page, "0x%08x\n", dev->t10_pr.pr_generation);
}
