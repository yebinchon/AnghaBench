
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_mixer_control {unsigned int reg; unsigned int shift; int max; unsigned int invert; } ;
struct soc_enum {int max; unsigned int reg; int shift_l; int mask; int* values; int * texts; } ;
struct snd_soc_dapm_widget {int id; int codec; TYPE_1__* kcontrols; } ;
struct snd_soc_dapm_path {int connect; int name; } ;
struct TYPE_2__ {scalar_t__ private_value; } ;


 int fls (int) ;
 int snd_soc_read (int ,unsigned int) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void dapm_set_path_status(struct snd_soc_dapm_widget *w,
 struct snd_soc_dapm_path *p, int i)
{
 switch (w->id) {
 case 130:
 case 139:
 case 138: {
  int val;
  struct soc_mixer_control *mc = (struct soc_mixer_control *)
   w->kcontrols[i].private_value;
  unsigned int reg = mc->reg;
  unsigned int shift = mc->shift;
  int max = mc->max;
  unsigned int mask = (1 << fls(max)) - 1;
  unsigned int invert = mc->invert;

  val = snd_soc_read(w->codec, reg);
  val = (val >> shift) & mask;

  if ((invert && !val) || (!invert && val))
   p->connect = 1;
  else
   p->connect = 0;
 }
 break;
 case 137: {
  struct soc_enum *e = (struct soc_enum *)w->kcontrols[i].private_value;
  int val, item, bitmask;

  for (bitmask = 1; bitmask < e->max; bitmask <<= 1)
  ;
  val = snd_soc_read(w->codec, e->reg);
  item = (val >> e->shift_l) & (bitmask - 1);

  p->connect = 0;
  for (i = 0; i < e->max; i++) {
   if (!(strcmp(p->name, e->texts[i])) && item == i)
    p->connect = 1;
  }
 }
 break;
 case 129: {
  struct soc_enum *e = (struct soc_enum *)
   w->kcontrols[i].private_value;
  int val, item;

  val = snd_soc_read(w->codec, e->reg);
  val = (val >> e->shift_l) & e->mask;
  for (item = 0; item < e->max; item++) {
   if (val == e->values[item])
    break;
  }

  p->connect = 0;
  for (i = 0; i < e->max; i++) {
   if (!(strcmp(p->name, e->texts[i])) && item == i)
    p->connect = 1;
  }
 }
 break;

 case 135:
 case 136:
 case 148:
 case 143:
 case 145:
 case 140:
 case 128:
 case 131:
 case 147:
 case 146:
  p->connect = 1;
 break;

 case 144:
 case 141:
 case 132:
 case 142:
 case 133:
 case 134:
  p->connect = 0;
 break;
 }
}
