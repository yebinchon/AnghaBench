
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct TYPE_2__ {int (* info ) (TYPE_1__*,struct snd_ctl_elem_info*) ;} ;
struct link_slave {TYPE_1__ slave; } ;


 struct link_slave* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (TYPE_1__*,struct snd_ctl_elem_info*) ;

__attribute__((used)) static int slave_info(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_info *uinfo)
{
 struct link_slave *slave = snd_kcontrol_chip(kcontrol);
 return slave->slave.info(&slave->slave, uinfo);
}
