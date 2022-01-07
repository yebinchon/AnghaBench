
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int atmel_start_clock () ;
 int dev_dbg (int *,char*) ;

__attribute__((used)) static void atmel_start_ehci(struct platform_device *pdev)
{
 dev_dbg(&pdev->dev, "start\n");
 atmel_start_clock();
}
