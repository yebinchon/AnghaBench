
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int iis_clk; } ;


 int clk_get_rate (int ) ;
 TYPE_1__ s3c24xx_i2s ;

u32 s3c24xx_i2s_get_clockrate(void)
{
 return clk_get_rate(s3c24xx_i2s.iis_clk);
}
