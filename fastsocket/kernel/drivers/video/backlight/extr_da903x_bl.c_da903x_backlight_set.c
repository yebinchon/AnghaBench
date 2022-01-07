
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct device {int dummy; } ;
struct da903x_backlight_data {int id; int current_brightness; struct device* da903x_dev; } ;
struct backlight_device {int dummy; } ;



 int DA9030_WLED_CONTROL ;
 int DA9030_WLED_CP_EN ;
 int DA9030_WLED_TRIM (int) ;

 int DA9034_WLED_BOOST_EN ;
 int DA9034_WLED_CONTROL1 ;
 int DA9034_WLED_CONTROL2 ;
 struct da903x_backlight_data* bl_get_data (struct backlight_device*) ;
 int da903x_clr_bits (struct device*,int ,int ) ;
 int da903x_set_bits (struct device*,int ,int ) ;
 int da903x_update (struct device*,int ,int,int) ;
 int da903x_write (struct device*,int ,int ) ;

__attribute__((used)) static int da903x_backlight_set(struct backlight_device *bl, int brightness)
{
 struct da903x_backlight_data *data = bl_get_data(bl);
 struct device *dev = data->da903x_dev;
 uint8_t val;
 int ret = 0;

 switch (data->id) {
 case 128:
  ret = da903x_update(dev, DA9034_WLED_CONTROL1,
    brightness, 0x7f);
  if (ret)
   return ret;

  if (data->current_brightness && brightness == 0)
   ret = da903x_clr_bits(dev,
     DA9034_WLED_CONTROL2,
     DA9034_WLED_BOOST_EN);

  if (data->current_brightness == 0 && brightness)
   ret = da903x_set_bits(dev,
     DA9034_WLED_CONTROL2,
     DA9034_WLED_BOOST_EN);
  break;
 case 129:
  val = DA9030_WLED_TRIM(brightness);
  val |= brightness ? DA9030_WLED_CP_EN : 0;
  ret = da903x_write(dev, DA9030_WLED_CONTROL, val);
  break;
 }

 if (ret)
  return ret;

 data->current_brightness = brightness;
 return 0;
}
