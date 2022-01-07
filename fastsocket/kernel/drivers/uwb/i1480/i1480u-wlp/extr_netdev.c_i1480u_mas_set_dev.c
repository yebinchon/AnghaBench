
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct TYPE_2__ {int dev_addr; struct device dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_dev {int dev_addr; } ;
typedef int rcaddrbuf ;
typedef int devaddrbuf ;


 int UWB_ADDR_STRSIZE ;
 int dev_err (struct device*,char*,char*,char*,int) ;
 int i1480u_set_ip_mas (struct uwb_rc*,int *,int ,int ,int ,unsigned long*) ;
 int uwb_dev_addr_print (char*,int,int *) ;

__attribute__((used)) static int i1480u_mas_set_dev(struct uwb_dev *uwb_dev, struct uwb_rc *rc,
         u8 stream, u8 owner, u8 type, unsigned long *mas)
{
 int result = 0;
 struct device *dev = &rc->uwb_dev.dev;

 result = i1480u_set_ip_mas(rc, &uwb_dev->dev_addr, stream, owner,
       type, mas);
 if (result < 0) {
  char rcaddrbuf[UWB_ADDR_STRSIZE], devaddrbuf[UWB_ADDR_STRSIZE];
  uwb_dev_addr_print(rcaddrbuf, sizeof(rcaddrbuf),
       &rc->uwb_dev.dev_addr);
  uwb_dev_addr_print(devaddrbuf, sizeof(devaddrbuf),
       &uwb_dev->dev_addr);
  dev_err(dev, "Set IP MAS (%s to %s) failed: %d\n",
   rcaddrbuf, devaddrbuf, result);
 }
 return result;
}
