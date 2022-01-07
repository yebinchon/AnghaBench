
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c; } ;
struct snd_kcontrol {int count; int private_free; struct link_slave* private_data; TYPE_1__ tlv; TYPE_2__* vd; int put; int get; int info; } ;
struct link_slave {unsigned int flags; int list; struct link_master* master; struct snd_kcontrol slave; struct snd_kcontrol* kctl; } ;
struct link_master {int slaves; } ;
struct TYPE_5__ {int access; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK ;
 struct link_slave* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int slave_free ;
 int slave_get ;
 int slave_info ;
 int slave_put ;
 int slave_tlv_cmd ;
 struct link_master* snd_kcontrol_chip (struct snd_kcontrol*) ;

int _snd_ctl_add_slave(struct snd_kcontrol *master, struct snd_kcontrol *slave,
         unsigned int flags)
{
 struct link_master *master_link = snd_kcontrol_chip(master);
 struct link_slave *srec;

 srec = kzalloc(sizeof(*srec) +
         slave->count * sizeof(*slave->vd), GFP_KERNEL);
 if (!srec)
  return -ENOMEM;
 srec->kctl = slave;
 srec->slave = *slave;
 memcpy(srec->slave.vd, slave->vd, slave->count * sizeof(*slave->vd));
 srec->master = master_link;
 srec->flags = flags;


 slave->info = slave_info;
 slave->get = slave_get;
 slave->put = slave_put;
 if (slave->vd[0].access & SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK)
  slave->tlv.c = slave_tlv_cmd;
 slave->private_data = srec;
 slave->private_free = slave_free;

 list_add_tail(&srec->list, &master_link->slaves);
 return 0;
}
