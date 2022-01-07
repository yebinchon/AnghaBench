
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_attr_body ;
 int dev_attr_capacitance ;
 int dev_attr_detune1 ;
 int dev_attr_detune2 ;
 int dev_attr_detune3 ;
 int dev_attr_detune4 ;
 int dev_attr_detune5 ;
 int dev_attr_detune6 ;
 int dev_attr_mix1 ;
 int dev_attr_mix2 ;
 int dev_attr_mix3 ;
 int dev_attr_mix4 ;
 int dev_attr_mix5 ;
 int dev_attr_mix6 ;
 int dev_attr_pickup1_angle ;
 int dev_attr_pickup1_enable ;
 int dev_attr_pickup1_level ;
 int dev_attr_pickup1_position ;
 int dev_attr_pickup1_type ;
 int dev_attr_pickup2_angle ;
 int dev_attr_pickup2_enable ;
 int dev_attr_pickup2_level ;
 int dev_attr_pickup2_position ;
 int dev_attr_pickup2_type ;
 int dev_attr_pickup_phase ;
 int dev_attr_pickup_wiring ;
 int dev_attr_save_tone ;
 int dev_attr_taper ;
 int dev_attr_tone_dump ;
 int dev_attr_tone_resistance ;
 int dev_attr_tuning1 ;
 int dev_attr_tuning2 ;
 int dev_attr_tuning3 ;
 int dev_attr_tuning4 ;
 int dev_attr_tuning5 ;
 int dev_attr_tuning6 ;
 int dev_attr_tuning_enable ;
 int dev_attr_volume_dump ;
 int dev_attr_volume_resistance ;
 int device_remove_file (struct device*,int *) ;

void variax_remove_files(int firmware, int type, struct device *dev)
{
 device_remove_file(dev, &dev_attr_body);
 device_remove_file(dev, &dev_attr_pickup1_enable);
 device_remove_file(dev, &dev_attr_pickup1_type);
 device_remove_file(dev, &dev_attr_pickup1_position);
 device_remove_file(dev, &dev_attr_pickup1_angle);
 device_remove_file(dev, &dev_attr_pickup1_level);
 device_remove_file(dev, &dev_attr_pickup2_enable);
 device_remove_file(dev, &dev_attr_pickup2_type);
 device_remove_file(dev, &dev_attr_pickup2_position);
 device_remove_file(dev, &dev_attr_pickup2_angle);
 device_remove_file(dev, &dev_attr_pickup2_level);
 device_remove_file(dev, &dev_attr_pickup_phase);
 device_remove_file(dev, &dev_attr_capacitance);
 device_remove_file(dev, &dev_attr_tone_resistance);
 device_remove_file(dev, &dev_attr_volume_resistance);
 device_remove_file(dev, &dev_attr_taper);
 device_remove_file(dev, &dev_attr_tone_dump);
 device_remove_file(dev, &dev_attr_save_tone);
 device_remove_file(dev, &dev_attr_volume_dump);
 device_remove_file(dev, &dev_attr_tuning_enable);
 device_remove_file(dev, &dev_attr_tuning6);
 device_remove_file(dev, &dev_attr_tuning5);
 device_remove_file(dev, &dev_attr_tuning4);
 device_remove_file(dev, &dev_attr_tuning3);
 device_remove_file(dev, &dev_attr_tuning2);
 device_remove_file(dev, &dev_attr_tuning1);
 device_remove_file(dev, &dev_attr_detune6);
 device_remove_file(dev, &dev_attr_detune5);
 device_remove_file(dev, &dev_attr_detune4);
 device_remove_file(dev, &dev_attr_detune3);
 device_remove_file(dev, &dev_attr_detune2);
 device_remove_file(dev, &dev_attr_detune1);
 device_remove_file(dev, &dev_attr_mix6);
 device_remove_file(dev, &dev_attr_mix5);
 device_remove_file(dev, &dev_attr_mix4);
 device_remove_file(dev, &dev_attr_mix3);
 device_remove_file(dev, &dev_attr_mix2);
 device_remove_file(dev, &dev_attr_mix1);
 device_remove_file(dev, &dev_attr_pickup_wiring);
}
