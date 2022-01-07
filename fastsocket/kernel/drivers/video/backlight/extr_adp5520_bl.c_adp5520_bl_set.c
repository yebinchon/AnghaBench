
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct backlight_device {int dummy; } ;
struct adp5520_bl {int cached_daylight_max; int current_brightness; TYPE_1__* pdata; struct device* master; } ;
struct TYPE_2__ {scalar_t__ en_ambl_sens; } ;


 int ADP5020_MAX_BRIGHTNESS ;
 int BL_AUTO_ADJ ;
 int BL_CONTROL ;
 int DAYLIGHT_MAX ;
 int DIM_EN ;
 int MODE_STATUS ;
 int adp5520_clr_bits (struct device*,int ,int ) ;
 int adp5520_set_bits (struct device*,int ,int ) ;
 int adp5520_write (struct device*,int ,int) ;
 struct adp5520_bl* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int adp5520_bl_set(struct backlight_device *bl, int brightness)
{
 struct adp5520_bl *data = bl_get_data(bl);
 struct device *master = data->master;
 int ret = 0;

 if (data->pdata->en_ambl_sens) {
  if ((brightness > 0) && (brightness < ADP5020_MAX_BRIGHTNESS)) {

   ret |= adp5520_clr_bits(master, BL_CONTROL,
     BL_AUTO_ADJ);
   ret |= adp5520_write(master, DAYLIGHT_MAX, brightness);
  } else {




   ret |= adp5520_write(master, DAYLIGHT_MAX,
      data->cached_daylight_max);
   ret |= adp5520_set_bits(master, BL_CONTROL,
      BL_AUTO_ADJ);
  }
 } else {
  ret |= adp5520_write(master, DAYLIGHT_MAX, brightness);
 }

 if (data->current_brightness && brightness == 0)
  ret |= adp5520_set_bits(master,
    MODE_STATUS, DIM_EN);
 else if (data->current_brightness == 0 && brightness)
  ret |= adp5520_clr_bits(master,
    MODE_STATUS, DIM_EN);

 if (!ret)
  data->current_brightness = brightness;

 return ret;
}
