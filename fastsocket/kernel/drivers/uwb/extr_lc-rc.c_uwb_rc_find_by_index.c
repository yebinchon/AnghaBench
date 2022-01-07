
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;
struct device {int dummy; } ;


 struct device* class_find_device (int *,int *,int*,int ) ;
 struct uwb_rc* dev_get_drvdata (struct device*) ;
 int uwb_rc_class ;
 int uwb_rc_index_match ;

__attribute__((used)) static struct uwb_rc *uwb_rc_find_by_index(int index)
{
 struct device *dev;
 struct uwb_rc *rc = ((void*)0);

 dev = class_find_device(&uwb_rc_class, ((void*)0), &index, uwb_rc_index_match);
 if (dev)
  rc = dev_get_drvdata(dev);
 return rc;
}
