
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_element {int elem_data_size; int elem_data; } ;
struct snd_kcontrol {struct user_element* private_data; } ;
struct snd_ctl_elem_value {int value; } ;


 int memcpy (int *,int ,int ) ;

__attribute__((used)) static int snd_ctl_elem_user_get(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct user_element *ue = kcontrol->private_data;

 memcpy(&ucontrol->value, ue->elem_data, ue->elem_data_size);
 return 0;
}
