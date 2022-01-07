
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int max; int min; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {TYPE_2__ value; int count; int type; } ;
struct TYPE_6__ {int max_val; int min_val; int count; int type; } ;
struct link_master {TYPE_3__ info; } ;


 int master_init (struct link_master*) ;
 struct link_master* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int master_info(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_info *uinfo)
{
 struct link_master *master = snd_kcontrol_chip(kcontrol);
 int ret;

 ret = master_init(master);
 if (ret < 0)
  return ret;
 uinfo->type = master->info.type;
 uinfo->count = master->info.count;
 uinfo->value.integer.min = master->info.min_val;
 uinfo->value.integer.max = master->info.max_val;
 return 0;
}
