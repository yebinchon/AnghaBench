
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zorro_driver {int (* probe ) (struct zorro_dev*,struct zorro_device_id const*) ;int id_table; } ;
struct zorro_device_id {int dummy; } ;
struct zorro_dev {struct zorro_driver* driver; } ;
struct device {int driver; } ;


 int stub1 (struct zorro_dev*,struct zorro_device_id const*) ;
 struct zorro_dev* to_zorro_dev (struct device*) ;
 struct zorro_driver* to_zorro_driver (int ) ;
 struct zorro_device_id* zorro_match_device (int ,struct zorro_dev*) ;

__attribute__((used)) static int zorro_device_probe(struct device *dev)
{
 int error = 0;
 struct zorro_driver *drv = to_zorro_driver(dev->driver);
 struct zorro_dev *z = to_zorro_dev(dev);

 if (!z->driver && drv->probe) {
  const struct zorro_device_id *id;

  id = zorro_match_device(drv->id_table, z);
  if (id)
   error = drv->probe(z, id);
  if (error >= 0) {
   z->driver = drv;
   error = 0;
  }
 }
 return error;
}
