
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct viafb_par {TYPE_1__* shared; } ;
struct TYPE_7__ {int * parent; } ;
struct TYPE_9__ {int id; int name; TYPE_2__ dev; TYPE_3__* algo_data; scalar_t__ class; int owner; } ;
struct TYPE_8__ {int udelay; int timeout; struct via_i2c_stuff* data; int getscl; int getsda; int (* setscl ) (struct via_i2c_stuff*,int) ;int (* setsda ) (struct via_i2c_stuff*,int) ;} ;
struct via_i2c_stuff {int i2c_port; TYPE_4__ adapter; TYPE_3__ algo; } ;
struct TYPE_6__ {struct via_i2c_stuff i2c_stuff; } ;


 int DEBUG_MSG (char*,int ) ;
 int GPIOPORTINDEX ;
 int I2CPORTINDEX ;
 int THIS_MODULE ;
 int i2c_bit_add_bus (TYPE_4__*) ;
 int i2c_set_adapdata (TYPE_4__*,struct via_i2c_stuff*) ;
 int strcpy (int ,char*) ;
 int udelay (int) ;
 int via_i2c_getscl ;
 int via_i2c_getsda ;
 int via_i2c_setscl (struct via_i2c_stuff*,int) ;
 int via_i2c_setsda (struct via_i2c_stuff*,int) ;

int viafb_create_i2c_bus(void *viapar)
{
 int ret;
 struct via_i2c_stuff *i2c_stuff =
  &((struct viafb_par *)viapar)->shared->i2c_stuff;

 strcpy(i2c_stuff->adapter.name, "via_i2c");
 i2c_stuff->i2c_port = 0x0;
 i2c_stuff->adapter.owner = THIS_MODULE;
 i2c_stuff->adapter.id = 0x01FFFF;
 i2c_stuff->adapter.class = 0;
 i2c_stuff->adapter.algo_data = &i2c_stuff->algo;
 i2c_stuff->adapter.dev.parent = ((void*)0);
 i2c_stuff->algo.setsda = via_i2c_setsda;
 i2c_stuff->algo.setscl = via_i2c_setscl;
 i2c_stuff->algo.getsda = via_i2c_getsda;
 i2c_stuff->algo.getscl = via_i2c_getscl;
 i2c_stuff->algo.udelay = 40;
 i2c_stuff->algo.timeout = 20;
 i2c_stuff->algo.data = i2c_stuff;

 i2c_set_adapdata(&i2c_stuff->adapter, i2c_stuff);


 i2c_stuff->i2c_port = I2CPORTINDEX;
 via_i2c_setsda(i2c_stuff, 1);
 via_i2c_setscl(i2c_stuff, 1);

 i2c_stuff->i2c_port = GPIOPORTINDEX;
 via_i2c_setsda(i2c_stuff, 1);
 via_i2c_setscl(i2c_stuff, 1);
 udelay(20);

 ret = i2c_bit_add_bus(&i2c_stuff->adapter);
 if (ret == 0)
  DEBUG_MSG("I2C bus %s registered.\n", i2c_stuff->adapter.name);
 else
  DEBUG_MSG("Failed to register I2C bus %s.\n",
   i2c_stuff->adapter.name);
 return ret;
}
