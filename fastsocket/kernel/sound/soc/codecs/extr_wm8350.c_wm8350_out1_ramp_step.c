
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350_output {scalar_t__ ramp; int left_vol; int right_vol; } ;
struct wm8350_data {struct wm8350_output out1; } ;
struct wm8350 {int dummy; } ;
struct snd_soc_codec {struct wm8350* control_data; struct wm8350_data* private_data; } ;


 int WM8350_LOUT1_VOLUME ;
 int WM8350_OUT1L_VOL_MASK ;
 int WM8350_OUT1L_VOL_SHIFT ;
 int WM8350_OUT1R_VOL_MASK ;
 int WM8350_OUT1R_VOL_SHIFT ;
 int WM8350_OUT1_VU ;
 scalar_t__ WM8350_RAMP_DOWN ;
 scalar_t__ WM8350_RAMP_UP ;
 int WM8350_ROUT1_VOLUME ;
 int wm8350_reg_read (struct wm8350*,int ) ;
 int wm8350_reg_write (struct wm8350*,int ,int) ;
 int wm8350_set_bits (struct wm8350*,int ,int ) ;

__attribute__((used)) static inline int wm8350_out1_ramp_step(struct snd_soc_codec *codec)
{
 struct wm8350_data *wm8350_data = codec->private_data;
 struct wm8350_output *out1 = &wm8350_data->out1;
 struct wm8350 *wm8350 = codec->control_data;
 int left_complete = 0, right_complete = 0;
 u16 reg, val;


 reg = wm8350_reg_read(wm8350, WM8350_LOUT1_VOLUME);
 val = (reg & WM8350_OUT1L_VOL_MASK) >> WM8350_OUT1L_VOL_SHIFT;

 if (out1->ramp == WM8350_RAMP_UP) {

  if (val < out1->left_vol) {
   val++;
   reg &= ~WM8350_OUT1L_VOL_MASK;
   wm8350_reg_write(wm8350, WM8350_LOUT1_VOLUME,
      reg | (val << WM8350_OUT1L_VOL_SHIFT));
  } else
   left_complete = 1;
 } else if (out1->ramp == WM8350_RAMP_DOWN) {

  if (val > 0) {
   val--;
   reg &= ~WM8350_OUT1L_VOL_MASK;
   wm8350_reg_write(wm8350, WM8350_LOUT1_VOLUME,
      reg | (val << WM8350_OUT1L_VOL_SHIFT));
  } else
   left_complete = 1;
 } else
  return 1;


 reg = wm8350_reg_read(wm8350, WM8350_ROUT1_VOLUME);
 val = (reg & WM8350_OUT1R_VOL_MASK) >> WM8350_OUT1R_VOL_SHIFT;
 if (out1->ramp == WM8350_RAMP_UP) {

  if (val < out1->right_vol) {
   val++;
   reg &= ~WM8350_OUT1R_VOL_MASK;
   wm8350_reg_write(wm8350, WM8350_ROUT1_VOLUME,
      reg | (val << WM8350_OUT1R_VOL_SHIFT));
  } else
   right_complete = 1;
 } else if (out1->ramp == WM8350_RAMP_DOWN) {

  if (val > 0) {
   val--;
   reg &= ~WM8350_OUT1R_VOL_MASK;
   wm8350_reg_write(wm8350, WM8350_ROUT1_VOLUME,
      reg | (val << WM8350_OUT1R_VOL_SHIFT));
  } else
   right_complete = 1;
 }


 if (!left_complete || !right_complete)
  wm8350_set_bits(wm8350, WM8350_LOUT1_VOLUME, WM8350_OUT1_VU);

 return left_complete & right_complete;
}
