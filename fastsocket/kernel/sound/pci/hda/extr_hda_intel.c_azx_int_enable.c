
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx {int dummy; } ;


 int ICH6_INT_CTRL_EN ;
 int ICH6_INT_GLOBAL_EN ;
 int INTCTL ;
 int azx_readl (struct azx*,int ) ;
 int azx_writel (struct azx*,int ,int) ;

__attribute__((used)) static void azx_int_enable(struct azx *chip)
{

 azx_writel(chip, INTCTL, azx_readl(chip, INTCTL) |
     ICH6_INT_CTRL_EN | ICH6_INT_GLOBAL_EN);
}
