
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int CHECK_RETURN (int ) ;
 int dev_attr_channel ;
 int dev_attr_clip ;
 int dev_attr_device_id ;
 int dev_attr_dirty ;
 int dev_attr_dump ;
 int dev_attr_dump_buf ;
 int dev_attr_finish ;
 int dev_attr_firmware_version ;
 int dev_attr_midi_postprocess ;
 int dev_attr_monitor_level ;
 int dev_attr_name ;
 int dev_attr_name_buf ;
 int dev_attr_raw ;
 int dev_attr_retrieve_amp_setup ;
 int dev_attr_retrieve_channel ;
 int dev_attr_retrieve_effects_setup ;
 int dev_attr_routing ;
 int dev_attr_serial_number ;
 int dev_attr_store_amp_setup ;
 int dev_attr_store_channel ;
 int dev_attr_store_effects_setup ;
 int dev_attr_tuner_freq ;
 int dev_attr_tuner_mute ;
 int dev_attr_tuner_note ;
 int dev_attr_tuner_pitch ;
 int device_create_file (struct device*,int *) ;

__attribute__((used)) static int pod_create_files2(struct device *dev)
{
 int err;

 CHECK_RETURN(device_create_file(dev, &dev_attr_channel));
 CHECK_RETURN(device_create_file(dev, &dev_attr_clip));
 CHECK_RETURN(device_create_file(dev, &dev_attr_device_id));
 CHECK_RETURN(device_create_file(dev, &dev_attr_dirty));
 CHECK_RETURN(device_create_file(dev, &dev_attr_dump));
 CHECK_RETURN(device_create_file(dev, &dev_attr_dump_buf));
 CHECK_RETURN(device_create_file(dev, &dev_attr_finish));
 CHECK_RETURN(device_create_file(dev, &dev_attr_firmware_version));
 CHECK_RETURN(device_create_file(dev, &dev_attr_midi_postprocess));
 CHECK_RETURN(device_create_file(dev, &dev_attr_monitor_level));
 CHECK_RETURN(device_create_file(dev, &dev_attr_name));
 CHECK_RETURN(device_create_file(dev, &dev_attr_name_buf));
 CHECK_RETURN(device_create_file(dev, &dev_attr_retrieve_amp_setup));
 CHECK_RETURN(device_create_file(dev, &dev_attr_retrieve_channel));
 CHECK_RETURN(device_create_file(dev, &dev_attr_retrieve_effects_setup));
 CHECK_RETURN(device_create_file(dev, &dev_attr_routing));
 CHECK_RETURN(device_create_file(dev, &dev_attr_serial_number));
 CHECK_RETURN(device_create_file(dev, &dev_attr_store_amp_setup));
 CHECK_RETURN(device_create_file(dev, &dev_attr_store_channel));
 CHECK_RETURN(device_create_file(dev, &dev_attr_store_effects_setup));
 CHECK_RETURN(device_create_file(dev, &dev_attr_tuner_freq));
 CHECK_RETURN(device_create_file(dev, &dev_attr_tuner_mute));
 CHECK_RETURN(device_create_file(dev, &dev_attr_tuner_note));
 CHECK_RETURN(device_create_file(dev, &dev_attr_tuner_pitch));





 return 0;
}
