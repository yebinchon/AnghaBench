
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_device {TYPE_1__* transport; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ transport_type; } ;


 scalar_t__ TRANSPORT_PLUGIN_PHBA_PDEV ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t target_core_dev_pr_show_attr_res_aptpl_metadata(
  struct se_device *dev, char *page)
{
 if (dev->transport->transport_type == TRANSPORT_PLUGIN_PHBA_PDEV)
  return 0;

 return sprintf(page, "Ready to process PR APTPL metadata..\n");
}
