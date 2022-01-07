
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct device {int dummy; } ;


 int EINVAL ;
 int LDDFR_COLOR_MASK ;
 int dev_dbg (struct device*,char*) ;

__attribute__((used)) static int sh7760fb_get_color_info(struct device *dev,
       u16 lddfr, int *bpp, int *gray)
{
 int lbpp, lgray;

 lgray = lbpp = 0;

 switch (lddfr & LDDFR_COLOR_MASK) {
 case 133:
  lgray = 1;
  lbpp = 1;
  break;
 case 132:
  lgray = 1;
  lbpp = 2;
  break;
 case 130:
  lgray = 1;
 case 131:
  lbpp = 4;
  break;
 case 129:
  lgray = 1;
 case 128:
  lbpp = 8;
  break;
 case 135:
 case 134:
  lbpp = 16;
  lgray = 0;
  break;
 default:
  dev_dbg(dev, "unsupported LDDFR bit depth.\n");
  return -EINVAL;
 }

 if (bpp)
  *bpp = lbpp;
 if (gray)
  *gray = lgray;

 return 0;
}
