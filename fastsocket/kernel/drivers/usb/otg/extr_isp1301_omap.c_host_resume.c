
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* host; } ;
struct isp1301 {TYPE_2__ otg; } ;
struct device {TYPE_3__* driver; } ;
struct TYPE_6__ {int (* resume ) (struct device*,int ) ;} ;
struct TYPE_4__ {struct device* controller; } ;


 int ENODEV ;
 int stub1 (struct device*,int ) ;

__attribute__((used)) static int host_resume(struct isp1301 *isp)
{



 struct device *dev;

 if (!isp->otg.host)
  return -ENODEV;

 dev = isp->otg.host->controller;
 return dev->driver->resume(dev, 0);

}
