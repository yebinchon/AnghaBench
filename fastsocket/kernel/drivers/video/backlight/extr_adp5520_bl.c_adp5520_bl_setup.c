
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct backlight_device {int dummy; } ;
struct adp5520_bl {int cached_daylight_max; struct adp5520_backlight_platfrom_data* pdata; struct device* master; } ;
struct adp5520_backlight_platfrom_data {int fade_out; int fade_in; scalar_t__ en_ambl_sens; int fade_led_law; int abml_filt; int l3_hyst; int l3_trip; int l2_hyst; int l2_trip; int l3_dark_dim; int l3_dark_max; int l2_office_dim; int l2_office_max; int l1_daylight_max; int l1_daylight_dim; } ;


 int ALS_CMPR_CFG ;
 int ALS_CMPR_CFG_VAL (int ,int ) ;
 int BL_CONTROL ;
 int BL_CTRL_VAL (int ,scalar_t__) ;
 int BL_EN ;
 int BL_FADE ;
 int DARK_DIM ;
 int DARK_MAX ;
 int DAYLIGHT_DIM ;
 int DAYLIGHT_MAX ;
 int DIM_EN ;
 int FADE_VAL (int ,int ) ;
 int L2_HYS ;
 int L2_TRIP ;
 int L3_EN ;
 int L3_HYS ;
 int L3_TRIP ;
 int MODE_STATUS ;
 int OFFICE_DIM ;
 int OFFICE_MAX ;
 int adp5520_set_bits (struct device*,int ,int) ;
 int adp5520_write (struct device*,int ,int ) ;
 struct adp5520_bl* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int adp5520_bl_setup(struct backlight_device *bl)
{
 struct adp5520_bl *data = bl_get_data(bl);
 struct device *master = data->master;
 struct adp5520_backlight_platfrom_data *pdata = data->pdata;
 int ret = 0;

 ret |= adp5520_write(master, DAYLIGHT_MAX, pdata->l1_daylight_max);
 ret |= adp5520_write(master, DAYLIGHT_DIM, pdata->l1_daylight_dim);

 if (pdata->en_ambl_sens) {
  data->cached_daylight_max = pdata->l1_daylight_max;
  ret |= adp5520_write(master, OFFICE_MAX, pdata->l2_office_max);
  ret |= adp5520_write(master, OFFICE_DIM, pdata->l2_office_dim);
  ret |= adp5520_write(master, DARK_MAX, pdata->l3_dark_max);
  ret |= adp5520_write(master, DARK_DIM, pdata->l3_dark_dim);
  ret |= adp5520_write(master, L2_TRIP, pdata->l2_trip);
  ret |= adp5520_write(master, L2_HYS, pdata->l2_hyst);
  ret |= adp5520_write(master, L3_TRIP, pdata->l3_trip);
  ret |= adp5520_write(master, L3_HYS, pdata->l3_hyst);
  ret |= adp5520_write(master, ALS_CMPR_CFG,
   ALS_CMPR_CFG_VAL(pdata->abml_filt, L3_EN));
 }

 ret |= adp5520_write(master, BL_CONTROL,
   BL_CTRL_VAL(pdata->fade_led_law, pdata->en_ambl_sens));

 ret |= adp5520_write(master, BL_FADE, FADE_VAL(pdata->fade_in,
   pdata->fade_out));

 ret |= adp5520_set_bits(master, MODE_STATUS, BL_EN | DIM_EN);

 return ret;
}
