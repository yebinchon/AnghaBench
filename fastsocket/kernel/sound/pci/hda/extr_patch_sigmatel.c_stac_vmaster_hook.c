
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stac_update_led_status (void*,int) ;

__attribute__((used)) static void stac_vmaster_hook(void *private_data, int val)
{
 stac_update_led_status(private_data, val);
}
