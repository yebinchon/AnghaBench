
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atmel_lcdfb_info {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_warn (int *,char*) ;

__attribute__((used)) static void init_backlight(struct atmel_lcdfb_info *sinfo)
{
 dev_warn(&sinfo->pdev->dev, "backlight control is not available\n");
}
