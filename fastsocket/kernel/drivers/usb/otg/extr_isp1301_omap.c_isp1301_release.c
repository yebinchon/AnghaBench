
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1301 {int (* i2c_release ) (struct device*) ;} ;
struct device {int dummy; } ;


 struct isp1301* dev_get_drvdata (struct device*) ;
 int kfree (struct isp1301*) ;
 int stub1 (struct device*) ;

__attribute__((used)) static void isp1301_release(struct device *dev)
{
 struct isp1301 *isp;

 isp = dev_get_drvdata(dev);




 if (isp->i2c_release)
  isp->i2c_release(dev);
 kfree (isp);
}
