
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int put_ssi_clk (int ) ;

__attribute__((used)) static int mx27vis_remove(struct platform_device *pdev)
{
 put_ssi_clk(0);
 return 0;
}
