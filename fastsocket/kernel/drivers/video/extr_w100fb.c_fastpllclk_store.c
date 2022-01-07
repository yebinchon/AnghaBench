
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w100fb_par {int fastpll_mode; } ;
struct fb_info {struct w100fb_par* par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int calc_hsync (struct w100fb_par*) ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int printk (char*) ;
 scalar_t__ simple_strtoul (char const*,int *,int) ;
 int w100_init_clocks (struct w100fb_par*) ;

__attribute__((used)) static ssize_t fastpllclk_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 struct fb_info *info = dev_get_drvdata(dev);
 struct w100fb_par *par=info->par;

 if (simple_strtoul(buf, ((void*)0), 10) > 0) {
  par->fastpll_mode=1;
  printk("w100fb: Using fast system clock (if possible)\n");
 } else {
  par->fastpll_mode=0;
  printk("w100fb: Using normal system clock\n");
 }

 w100_init_clocks(par);
 calc_hsync(par);

 return count;
}
