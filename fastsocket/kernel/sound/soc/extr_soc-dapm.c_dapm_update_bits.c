
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {scalar_t__ id; int power; int shift; int reg; int name; scalar_t__ invert; struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int pop_time; } ;


 int pop_dbg (int ,char*,int ,char*,int ) ;
 int pop_wait (int ) ;
 int pr_debug (char*,int ,unsigned int,unsigned int,int) ;
 scalar_t__ snd_soc_dapm_hp ;
 scalar_t__ snd_soc_dapm_input ;
 scalar_t__ snd_soc_dapm_line ;
 scalar_t__ snd_soc_dapm_mic ;
 scalar_t__ snd_soc_dapm_output ;
 scalar_t__ snd_soc_dapm_spk ;
 unsigned int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,unsigned int) ;

__attribute__((used)) static int dapm_update_bits(struct snd_soc_dapm_widget *widget)
{
 int change, power;
 unsigned int old, new;
 struct snd_soc_codec *codec = widget->codec;


 if (widget->reg < 0 || widget->id == snd_soc_dapm_input ||
  widget->id == snd_soc_dapm_output ||
  widget->id == snd_soc_dapm_hp ||
  widget->id == snd_soc_dapm_mic ||
  widget->id == snd_soc_dapm_line ||
  widget->id == snd_soc_dapm_spk)
  return 0;

 power = widget->power;
 if (widget->invert)
  power = (power ? 0:1);

 old = snd_soc_read(codec, widget->reg);
 new = (old & ~(0x1 << widget->shift)) | (power << widget->shift);

 change = old != new;
 if (change) {
  pop_dbg(codec->pop_time, "pop test %s : %s in %d ms\n",
   widget->name, widget->power ? "on" : "off",
   codec->pop_time);
  snd_soc_write(codec, widget->reg, new);
  pop_wait(codec->pop_time);
 }
 pr_debug("reg %x old %x new %x change %d\n", widget->reg,
   old, new, change);
 return change;
}
