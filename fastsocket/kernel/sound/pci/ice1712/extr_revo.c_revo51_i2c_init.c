
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pt2258 {int i2c_dev; TYPE_2__* i2c_bus; int card; } ;
struct snd_ice1712 {TYPE_2__* i2c; int card; struct revo51_spec* spec; } ;
struct revo51_spec {struct snd_pt2258* pt2258; int dev; } ;
struct TYPE_4__ {int * bit; } ;
struct TYPE_5__ {TYPE_1__ hw_ops; struct snd_ice1712* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct revo51_spec* kzalloc (int,int ) ;
 int revo51_bit_ops ;
 int snd_i2c_bus_create (int ,char*,int *,TYPE_2__**) ;
 int snd_i2c_device_create (TYPE_2__*,char*,int,int *) ;
 int snd_pt2258_reset (struct snd_pt2258*) ;

__attribute__((used)) static int revo51_i2c_init(struct snd_ice1712 *ice,
      struct snd_pt2258 *pt)
{
 struct revo51_spec *spec;
 int err;

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;
 ice->spec = spec;


 err = snd_i2c_bus_create(ice->card, "ICE1724 GPIO6", ((void*)0), &ice->i2c);
 if (err < 0)
  return err;

 ice->i2c->private_data = ice;
 ice->i2c->hw_ops.bit = &revo51_bit_ops;


 err = snd_i2c_device_create(ice->i2c, "PT2258", 0x40, &spec->dev);
 if (err < 0)
  return err;

 pt->card = ice->card;
 pt->i2c_bus = ice->i2c;
 pt->i2c_dev = spec->dev;
 spec->pt2258 = pt;

 snd_pt2258_reset(pt);

 return 0;
}
