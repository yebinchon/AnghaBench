
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {char* name; int count; void* private_value; int put; int get; int info; int iface; scalar_t__ index; } ;
struct snd_akm4xxx {int type; int card; scalar_t__ idx_offset; } ;
typedef int knew ;


 void* AK_COMPOSE (int,int,int,int ) ;
 int EINVAL ;
 int SNDRV_CTL_ELEM_IFACE_MIXER ;






 int memset (struct snd_kcontrol_new*,int ,int) ;
 int snd_akm4xxx_deemphasis_get ;
 int snd_akm4xxx_deemphasis_info ;
 int snd_akm4xxx_deemphasis_put ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct snd_akm4xxx*) ;

__attribute__((used)) static int build_deemphasis(struct snd_akm4xxx *ak, int num_emphs)
{
 int idx, err;
 struct snd_kcontrol_new knew;

 for (idx = 0; idx < num_emphs; idx++) {
  memset(&knew, 0, sizeof(knew));
  knew.name = "Deemphasis";
  knew.index = idx + ak->idx_offset;
  knew.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
  knew.count = 1;
  knew.info = snd_akm4xxx_deemphasis_info;
  knew.get = snd_akm4xxx_deemphasis_get;
  knew.put = snd_akm4xxx_deemphasis_put;
  switch (ak->type) {
  case 130:
  case 129:

   knew.private_value = AK_COMPOSE(idx, 3, 0, 0);
   break;
  case 128: {
   int shift = idx == 3 ? 6 : (2 - idx) * 2;

   knew.private_value = AK_COMPOSE(0, 8, shift, 0);
   break;
  }
  case 133:
  case 132:
   knew.private_value = AK_COMPOSE(idx, 3, 0, 0);
   break;
  case 131:
   knew.private_value = AK_COMPOSE(idx, 1, 1, 0);
   break;
  default:
   return -EINVAL;
  }
  err = snd_ctl_add(ak->card, snd_ctl_new1(&knew, ak));
  if (err < 0)
   return err;
 }
 return 0;
}
