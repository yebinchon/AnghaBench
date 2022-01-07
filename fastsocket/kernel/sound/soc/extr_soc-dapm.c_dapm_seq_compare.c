
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {size_t id; scalar_t__ reg; } ;



__attribute__((used)) static int dapm_seq_compare(struct snd_soc_dapm_widget *a,
       struct snd_soc_dapm_widget *b,
       int sort[])
{
 if (sort[a->id] != sort[b->id])
  return sort[a->id] - sort[b->id];
 if (a->reg != b->reg)
  return a->reg - b->reg;

 return 0;
}
