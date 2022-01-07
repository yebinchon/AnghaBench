
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_element {int elem_data_size; int elem_data; } ;
struct snd_kcontrol {struct user_element* private_data; } ;
struct snd_ctl_elem_value {int value; } ;


 scalar_t__ memcmp (int *,int ,int ) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static int snd_ctl_elem_user_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 int change;
 struct user_element *ue = kcontrol->private_data;

 change = memcmp(&ucontrol->value, ue->elem_data, ue->elem_data_size) != 0;
 if (change)
  memcpy(ue->elem_data, &ucontrol->value, ue->elem_data_size);
 return change;
}
