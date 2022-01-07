
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* parent; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct uwb_rc {TYPE_3__ uwb_dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device* parent; } ;


 struct uwb_rc* dev_get_drvdata (struct device*) ;
 struct uwb_rc* uwb_rc_get (struct uwb_rc*) ;

__attribute__((used)) static int find_rc_grandpa(struct device *dev, void *data)
{
 struct device *grandpa_dev = data;
 struct uwb_rc *rc = dev_get_drvdata(dev);

 if (rc->uwb_dev.dev.parent->parent == grandpa_dev) {
  rc = uwb_rc_get(rc);
  return 1;
 }
 return 0;
}
