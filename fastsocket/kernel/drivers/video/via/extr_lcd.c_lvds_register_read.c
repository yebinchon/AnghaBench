
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_10__ {TYPE_4__* chip_info; TYPE_2__* shared; } ;
struct TYPE_8__ {scalar_t__ lvds_chip_slave_addr; } ;
struct TYPE_9__ {TYPE_3__ lvds_chip_info; } ;
struct TYPE_6__ {int i2c_port; } ;
struct TYPE_7__ {TYPE_1__ i2c_stuff; } ;


 int GPIOPORTINDEX ;
 int viafb_i2c_readbyte (int,int,int*) ;
 TYPE_5__* viaparinfo ;

__attribute__((used)) static int lvds_register_read(int index)
{
 u8 data;

 viaparinfo->shared->i2c_stuff.i2c_port = GPIOPORTINDEX;
 viafb_i2c_readbyte((u8) viaparinfo->chip_info->
     lvds_chip_info.lvds_chip_slave_addr,
   (u8) index, &data);
 return data;
}
