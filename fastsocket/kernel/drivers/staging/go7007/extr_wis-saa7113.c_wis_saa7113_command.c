
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct wis_saa7113 {int norm; int brightness; int contrast; int saturation; int hue; } ;
struct v4l2_queryctrl {int minimum; int maximum; int step; int default_value; int flags; int name; void* type; int id; } ;
struct v4l2_control {int value; int id; } ;
struct i2c_client {int dummy; } ;






 void* V4L2_CTRL_TYPE_INTEGER ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_PAL ;
 int V4L2_STD_SECAM ;





 struct wis_saa7113* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;
 int strncpy (int ,char*,int) ;
 int write_reg (struct i2c_client*,int,int) ;

__attribute__((used)) static int wis_saa7113_command(struct i2c_client *client,
    unsigned int cmd, void *arg)
{
 struct wis_saa7113 *dec = i2c_get_clientdata(client);

 switch (cmd) {
 case 129:
 {
  int *input = arg;

  i2c_smbus_write_byte_data(client, 0x02, 0xC0 | *input);
  i2c_smbus_write_byte_data(client, 0x09,
    *input < 6 ? 0x40 : 0x80);
  break;
 }
 case 128:
 {
  v4l2_std_id *input = arg;
  dec->norm = *input;
  if (dec->norm & V4L2_STD_NTSC) {
   write_reg(client, 0x0e, 0x01);
   write_reg(client, 0x10, 0x40);
  } else if (dec->norm & V4L2_STD_PAL) {
   write_reg(client, 0x0e, 0x01);
   write_reg(client, 0x10, 0x48);
  } else if (dec->norm * V4L2_STD_SECAM) {
   write_reg(client, 0x0e, 0x50);
   write_reg(client, 0x10, 0x48);
  }
  break;
 }
 case 131:
 {
  struct v4l2_queryctrl *ctrl = arg;

  switch (ctrl->id) {
  case 136:
   ctrl->type = V4L2_CTRL_TYPE_INTEGER;
   strncpy(ctrl->name, "Brightness", sizeof(ctrl->name));
   ctrl->minimum = 0;
   ctrl->maximum = 255;
   ctrl->step = 1;
   ctrl->default_value = 128;
   ctrl->flags = 0;
   break;
  case 135:
   ctrl->type = V4L2_CTRL_TYPE_INTEGER;
   strncpy(ctrl->name, "Contrast", sizeof(ctrl->name));
   ctrl->minimum = 0;
   ctrl->maximum = 127;
   ctrl->step = 1;
   ctrl->default_value = 71;
   ctrl->flags = 0;
   break;
  case 133:
   ctrl->type = V4L2_CTRL_TYPE_INTEGER;
   strncpy(ctrl->name, "Saturation", sizeof(ctrl->name));
   ctrl->minimum = 0;
   ctrl->maximum = 127;
   ctrl->step = 1;
   ctrl->default_value = 64;
   ctrl->flags = 0;
   break;
  case 134:
   ctrl->type = V4L2_CTRL_TYPE_INTEGER;
   strncpy(ctrl->name, "Hue", sizeof(ctrl->name));
   ctrl->minimum = -128;
   ctrl->maximum = 127;
   ctrl->step = 1;
   ctrl->default_value = 0;
   ctrl->flags = 0;
   break;
  }
  break;
 }
 case 130:
 {
  struct v4l2_control *ctrl = arg;

  switch (ctrl->id) {
  case 136:
   if (ctrl->value > 255)
    dec->brightness = 255;
   else if (ctrl->value < 0)
    dec->brightness = 0;
   else
    dec->brightness = ctrl->value;
   write_reg(client, 0x0a, dec->brightness);
   break;
  case 135:
   if (ctrl->value > 127)
    dec->contrast = 127;
   else if (ctrl->value < 0)
    dec->contrast = 0;
   else
    dec->contrast = ctrl->value;
   write_reg(client, 0x0b, dec->contrast);
   break;
  case 133:
   if (ctrl->value > 127)
    dec->saturation = 127;
   else if (ctrl->value < 0)
    dec->saturation = 0;
   else
    dec->saturation = ctrl->value;
   write_reg(client, 0x0c, dec->saturation);
   break;
  case 134:
   if (ctrl->value > 127)
    dec->hue = 127;
   else if (ctrl->value < -128)
    dec->hue = -128;
   else
    dec->hue = ctrl->value;
   write_reg(client, 0x0d, dec->hue);
   break;
  }
  break;
 }
 case 132:
 {
  struct v4l2_control *ctrl = arg;

  switch (ctrl->id) {
  case 136:
   ctrl->value = dec->brightness;
   break;
  case 135:
   ctrl->value = dec->contrast;
   break;
  case 133:
   ctrl->value = dec->saturation;
   break;
  case 134:
   ctrl->value = dec->hue;
   break;
  }
  break;
 }
 default:
  break;
 }
 return 0;
}
