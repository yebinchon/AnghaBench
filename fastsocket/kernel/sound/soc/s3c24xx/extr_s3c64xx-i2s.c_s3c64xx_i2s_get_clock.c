
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct s3c_i2sv2_info {struct clk* iis_cclk; } ;
struct clk {int dummy; } ;


 struct s3c_i2sv2_info* to_info (struct snd_soc_dai*) ;

struct clk *s3c64xx_i2s_get_clock(struct snd_soc_dai *dai)
{
 struct s3c_i2sv2_info *i2s = to_info(dai);

 return i2s->iis_cclk;
}
