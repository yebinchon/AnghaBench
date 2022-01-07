
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev_addr; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_dev_addr {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 struct uwb_rc* dev_get_drvdata (struct device*) ;
 int uwb_dev_addr_cmp (int *,struct uwb_dev_addr*) ;
 struct uwb_rc* uwb_rc_get (struct uwb_rc*) ;

__attribute__((used)) static int find_rc_dev(struct device *dev, void *data)
{
 struct uwb_dev_addr *addr = data;
 struct uwb_rc *rc = dev_get_drvdata(dev);

 if (rc == ((void*)0)) {
  WARN_ON(1);
  return 0;
 }
 if (!uwb_dev_addr_cmp(&rc->uwb_dev.dev_addr, addr)) {
  rc = uwb_rc_get(rc);
  return 1;
 }
 return 0;
}
