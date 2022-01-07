
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tas {int cached_volume_l; int cached_volume_r; scalar_t__ mute_r; scalar_t__ mute_l; } ;


 int TAS_REG_VOL ;
 int* tas_gaintable ;
 int tas_write_reg (struct tas*,int ,int,int*) ;

__attribute__((used)) static void tas_set_volume(struct tas *tas)
{
 u8 block[6];
 int tmp;
 u8 left, right;

 left = tas->cached_volume_l;
 right = tas->cached_volume_r;

 if (left > 177) left = 177;
 if (right > 177) right = 177;

 if (tas->mute_l) left = 0;
 if (tas->mute_r) right = 0;







 tmp = tas_gaintable[left];
 block[0] = tmp>>20;
 block[1] = tmp>>12;
 block[2] = tmp>>4;
 tmp = tas_gaintable[right];
 block[3] = tmp>>20;
 block[4] = tmp>>12;
 block[5] = tmp>>4;
 tas_write_reg(tas, TAS_REG_VOL, 6, block);
}
