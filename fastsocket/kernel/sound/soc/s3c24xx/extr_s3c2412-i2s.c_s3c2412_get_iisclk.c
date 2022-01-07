
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int dummy; } ;
struct TYPE_2__ {struct clk* iis_clk; } ;


 TYPE_1__ s3c2412_i2s ;

struct clk *s3c2412_get_iisclk(void)
{
 return s3c2412_i2s.iis_clk;
}
