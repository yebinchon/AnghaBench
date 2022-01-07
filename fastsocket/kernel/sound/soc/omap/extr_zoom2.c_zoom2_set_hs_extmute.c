
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZOOM2_HEADSET_EXTMUTE_GPIO ;
 int gpio_set_value (int ,int) ;

void zoom2_set_hs_extmute(int mute)
{
 gpio_set_value(ZOOM2_HEADSET_EXTMUTE_GPIO, mute);
}
