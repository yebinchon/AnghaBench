
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w100fb_par {int flip; } ;
struct fb_info {struct w100fb_par* par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int calc_hsync (struct w100fb_par*) ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 unsigned int simple_strtoul (char const*,int *,int) ;
 int w100_set_dispregs (struct w100fb_par*) ;
 int w100_update_disable () ;
 int w100_update_enable () ;

__attribute__((used)) static ssize_t flip_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 unsigned int flip;
 struct fb_info *info = dev_get_drvdata(dev);
 struct w100fb_par *par=info->par;

 flip = simple_strtoul(buf, ((void*)0), 10);

 if (flip > 0)
  par->flip = 1;
 else
  par->flip = 0;

 w100_update_disable();
 w100_set_dispregs(par);
 w100_update_enable();

 calc_hsync(par);

 return count;
}
