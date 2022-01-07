
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350_jack_data {int report; int jack; } ;
struct wm8350_data {struct wm8350_jack_data hpr; struct wm8350_jack_data hpl; } ;
struct wm8350 {int dev; } ;


 int BUG () ;


 int WM8350_JACK_L_LVL ;
 int WM8350_JACK_PIN_STATUS ;
 int WM8350_JACK_R_LVL ;
 int dev_warn (int ,char*) ;
 int msleep (int) ;
 int snd_soc_jack_report (int ,int,int) ;
 int wm8350_reg_read (struct wm8350*,int ) ;

__attribute__((used)) static void wm8350_hp_jack_handler(struct wm8350 *wm8350, int irq, void *data)
{
 struct wm8350_data *priv = data;
 u16 reg;
 int report;
 int mask;
 struct wm8350_jack_data *jack = ((void*)0);

 switch (irq) {
 case 129:
  jack = &priv->hpl;
  mask = WM8350_JACK_L_LVL;
  break;

 case 128:
  jack = &priv->hpr;
  mask = WM8350_JACK_R_LVL;
  break;

 default:
  BUG();
 }

 if (!jack->jack) {
  dev_warn(wm8350->dev, "Jack interrupt called with no jack\n");
  return;
 }


 msleep(200);

 reg = wm8350_reg_read(wm8350, WM8350_JACK_PIN_STATUS);
 if (reg & mask)
  report = jack->report;
 else
  report = 0;

 snd_soc_jack_report(jack->jack, report, jack->report);
}
