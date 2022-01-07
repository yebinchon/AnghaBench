
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int CHECK_RETURN (int ) ;
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
 int device_create_file (struct device*,int *) ;

int variax_create_files(int firmware, int type, struct device *dev)
{
 int err;
 CHECK_RETURN(device_create_file(dev, &dev_attr_body));
 CHECK_RETURN(device_create_file(dev, &dev_attr_pickup1_enable));
 CHECK_RETURN(device_create_file(dev, &dev_attr_pickup1_type));
 CHECK_RETURN(device_create_file(dev, &dev_attr_pickup1_position));
 CHECK_RETURN(device_create_file(dev, &dev_attr_pickup1_angle));
 CHECK_RETURN(device_create_file(dev, &dev_attr_pickup1_level));
 CHECK_RETURN(device_create_file(dev, &dev_attr_pickup2_enable));
 CHECK_RETURN(device_create_file(dev, &dev_attr_pickup2_type));
 CHECK_RETURN(device_create_file(dev, &dev_attr_pickup2_position));
 CHECK_RETURN(device_create_file(dev, &dev_attr_pickup2_angle));
 CHECK_RETURN(device_create_file(dev, &dev_attr_pickup2_level));
 CHECK_RETURN(device_create_file(dev, &dev_attr_pickup_phase));
 CHECK_RETURN(device_create_file(dev, &dev_attr_capacitance));
 CHECK_RETURN(device_create_file(dev, &dev_attr_tone_resistance));
 CHECK_RETURN(device_create_file(dev, &dev_attr_volume_resistance));
 CHECK_RETURN(device_create_file(dev, &dev_attr_taper));
 CHECK_RETURN(device_create_file(dev, &dev_attr_tone_dump));
 CHECK_RETURN(device_create_file(dev, &dev_attr_save_tone));
 CHECK_RETURN(device_create_file(dev, &dev_attr_volume_dump));
 CHECK_RETURN(device_create_file(dev, &dev_attr_tuning_enable));
 CHECK_RETURN(device_create_file(dev, &dev_attr_tuning6));
 CHECK_RETURN(device_create_file(dev, &dev_attr_tuning5));
 CHECK_RETURN(device_create_file(dev, &dev_attr_tuning4));
 CHECK_RETURN(device_create_file(dev, &dev_attr_tuning3));
 CHECK_RETURN(device_create_file(dev, &dev_attr_tuning2));
 CHECK_RETURN(device_create_file(dev, &dev_attr_tuning1));
 CHECK_RETURN(device_create_file(dev, &dev_attr_detune6));
 CHECK_RETURN(device_create_file(dev, &dev_attr_detune5));
 CHECK_RETURN(device_create_file(dev, &dev_attr_detune4));
 CHECK_RETURN(device_create_file(dev, &dev_attr_detune3));
 CHECK_RETURN(device_create_file(dev, &dev_attr_detune2));
 CHECK_RETURN(device_create_file(dev, &dev_attr_detune1));
 CHECK_RETURN(device_create_file(dev, &dev_attr_mix6));
 CHECK_RETURN(device_create_file(dev, &dev_attr_mix5));
 CHECK_RETURN(device_create_file(dev, &dev_attr_mix4));
 CHECK_RETURN(device_create_file(dev, &dev_attr_mix3));
 CHECK_RETURN(device_create_file(dev, &dev_attr_mix2));
 CHECK_RETURN(device_create_file(dev, &dev_attr_mix1));
 CHECK_RETURN(device_create_file(dev, &dev_attr_pickup_wiring));
  return 0;
}
