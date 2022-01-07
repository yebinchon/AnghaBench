
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * ops; } ;
struct snd_info_entry {scalar_t__ size; TYPE_3__ c; void* private_free; struct gus_proc_private* private_data; void* content; } ;
struct TYPE_6__ {TYPE_1__* banks_8; } ;
struct TYPE_8__ {int rom_present; scalar_t__ rom_memory; TYPE_2__ mem_alloc; } ;
struct snd_gus_card {TYPE_4__ gf1; int card; } ;
struct gus_proc_private {int address; scalar_t__ size; int rom; struct snd_gus_card* gus; } ;
struct TYPE_5__ {scalar_t__ size; int address; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* SNDRV_INFO_CONTENT_DATA ;
 struct gus_proc_private* kzalloc (int,int ) ;
 int snd_card_proc_new (int ,char*,struct snd_info_entry**) ;
 void* snd_gf1_mem_proc_free ;
 int snd_gf1_mem_proc_ops ;
 int sprintf (char*,char*,int) ;

int snd_gf1_mem_proc_init(struct snd_gus_card * gus)
{
 int idx;
 char name[16];
 struct gus_proc_private *priv;
 struct snd_info_entry *entry;

 for (idx = 0; idx < 4; idx++) {
  if (gus->gf1.mem_alloc.banks_8[idx].size > 0) {
   priv = kzalloc(sizeof(*priv), GFP_KERNEL);
   if (priv == ((void*)0))
    return -ENOMEM;
   priv->gus = gus;
   sprintf(name, "gus-ram-%i", idx);
   if (! snd_card_proc_new(gus->card, name, &entry)) {
    entry->content = SNDRV_INFO_CONTENT_DATA;
    entry->private_data = priv;
    entry->private_free = snd_gf1_mem_proc_free;
    entry->c.ops = &snd_gf1_mem_proc_ops;
    priv->address = gus->gf1.mem_alloc.banks_8[idx].address;
    priv->size = entry->size = gus->gf1.mem_alloc.banks_8[idx].size;
   }
  }
 }
 for (idx = 0; idx < 4; idx++) {
  if (gus->gf1.rom_present & (1 << idx)) {
   priv = kzalloc(sizeof(*priv), GFP_KERNEL);
   if (priv == ((void*)0))
    return -ENOMEM;
   priv->rom = 1;
   priv->gus = gus;
   sprintf(name, "gus-rom-%i", idx);
   if (! snd_card_proc_new(gus->card, name, &entry)) {
    entry->content = SNDRV_INFO_CONTENT_DATA;
    entry->private_data = priv;
    entry->private_free = snd_gf1_mem_proc_free;
    entry->c.ops = &snd_gf1_mem_proc_ops;
    priv->address = idx * 4096 * 1024;
    priv->size = entry->size = gus->gf1.rom_memory;
   }
  }
 }
 return 0;
}
