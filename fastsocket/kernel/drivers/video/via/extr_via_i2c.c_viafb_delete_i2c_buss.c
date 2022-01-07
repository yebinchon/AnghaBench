
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct viafb_par {TYPE_2__* shared; } ;
struct TYPE_3__ {int adapter; } ;
struct TYPE_4__ {TYPE_1__ i2c_stuff; } ;


 int i2c_del_adapter (int *) ;

void viafb_delete_i2c_buss(void *par)
{
 i2c_del_adapter(&((struct viafb_par *)par)->shared->i2c_stuff.adapter);
}
