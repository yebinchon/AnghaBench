
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* gpio; } ;
struct tas {int hw_enabled; int mtx; TYPE_1__ codec; } ;
struct codec_info_item {struct tas* codec_data; } ;
typedef enum clock_switch { ____Placeholder_clock_switch } clock_switch ;
struct TYPE_7__ {TYPE_2__* methods; } ;
struct TYPE_6__ {int (* all_amps_restore ) (TYPE_3__*) ;int (* all_amps_off ) (TYPE_3__*) ;} ;




 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 int tas_reset_init (struct tas*) ;
 int tas_set_mixer (struct tas*) ;
 int tas_set_volume (struct tas*) ;

__attribute__((used)) static int tas_switch_clock(struct codec_info_item *cii, enum clock_switch clock)
{
 struct tas *tas = cii->codec_data;

 switch(clock) {
 case 129:

  tas->codec.gpio->methods->all_amps_off(tas->codec.gpio);
  tas->hw_enabled = 0;
  break;
 case 128:

  mutex_lock(&tas->mtx);
  tas_reset_init(tas);
  tas_set_volume(tas);
  tas_set_mixer(tas);
  tas->hw_enabled = 1;
  tas->codec.gpio->methods->all_amps_restore(tas->codec.gpio);
  mutex_unlock(&tas->mtx);
  break;
 default:

  return -EINVAL;
 }
 return 0;
}
