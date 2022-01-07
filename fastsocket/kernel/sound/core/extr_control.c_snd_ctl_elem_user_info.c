
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ctl_elem_info {int dummy; } ;
struct user_element {struct snd_ctl_elem_info info; } ;
struct snd_kcontrol {struct user_element* private_data; } ;



__attribute__((used)) static int snd_ctl_elem_user_info(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_info *uinfo)
{
 struct user_element *ue = kcontrol->private_data;

 *uinfo = ue->info;
 return 0;
}
