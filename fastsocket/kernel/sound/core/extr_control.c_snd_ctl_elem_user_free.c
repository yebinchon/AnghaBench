
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_element {struct user_element* tlv_data; } ;
struct snd_kcontrol {struct user_element* private_data; } ;


 int kfree (struct user_element*) ;

__attribute__((used)) static void snd_ctl_elem_user_free(struct snd_kcontrol *kcontrol)
{
 struct user_element *ue = kcontrol->private_data;
 if (ue->tlv_data)
  kfree(ue->tlv_data);
 kfree(ue);
}
