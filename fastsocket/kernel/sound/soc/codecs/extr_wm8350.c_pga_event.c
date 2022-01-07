
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350_output {int active; int ramp; } ;
struct wm8350_data {struct wm8350_output out2; struct wm8350_output out1; } ;
struct snd_soc_dapm_widget {int shift; struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int delayed_work; struct wm8350_data* private_data; } ;
struct snd_kcontrol {int dummy; } ;


 int BUG () ;


 int WM8350_RAMP_DOWN ;
 int WM8350_RAMP_UP ;
 int delayed_work_pending (int *) ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int pga_event(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_codec *codec = w->codec;
 struct wm8350_data *wm8350_data = codec->private_data;
 struct wm8350_output *out;

 switch (w->shift) {
 case 0:
 case 1:
  out = &wm8350_data->out1;
  break;
 case 2:
 case 3:
  out = &wm8350_data->out2;
  break;

 default:
  BUG();
  return -1;
 }

 switch (event) {
 case 129:
  out->ramp = WM8350_RAMP_UP;
  out->active = 1;

  if (!delayed_work_pending(&codec->delayed_work))
   schedule_delayed_work(&codec->delayed_work,
           msecs_to_jiffies(1));
  break;

 case 128:
  out->ramp = WM8350_RAMP_DOWN;
  out->active = 0;

  if (!delayed_work_pending(&codec->delayed_work))
   schedule_delayed_work(&codec->delayed_work,
           msecs_to_jiffies(1));
  break;
 }

 return 0;
}
