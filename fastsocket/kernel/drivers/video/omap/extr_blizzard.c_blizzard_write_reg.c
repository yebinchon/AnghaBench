
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {TYPE_1__* extif; } ;
struct TYPE_3__ {int (* write_data ) (int *,int) ;int (* write_command ) (int *,int) ;int (* set_bits_per_cycle ) (int) ;} ;


 TYPE_2__ blizzard ;
 int stub1 (int) ;
 int stub2 (int *,int) ;
 int stub3 (int *,int) ;

__attribute__((used)) static void blizzard_write_reg(u8 reg, u8 val)
{
 blizzard.extif->set_bits_per_cycle(8);
 blizzard.extif->write_command(&reg, 1);
 blizzard.extif->write_data(&val, 1);
}
