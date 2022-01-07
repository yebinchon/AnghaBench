
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ili9320 {int initialised; int dev; int platdata; TYPE_1__* client; } ;
struct TYPE_2__ {int (* init ) (struct ili9320*,int ) ;} ;


 int dev_err (int ,char*) ;
 int ili9320_reset (struct ili9320*) ;
 int stub1 (struct ili9320*,int ) ;

__attribute__((used)) static inline int ili9320_init_chip(struct ili9320 *lcd)
{
 int ret;

 ili9320_reset(lcd);

 ret = lcd->client->init(lcd, lcd->platdata);
 if (ret != 0) {
  dev_err(lcd->dev, "failed to initialise display\n");
  return ret;
 }

 lcd->initialised = 1;
 return 0;
}
