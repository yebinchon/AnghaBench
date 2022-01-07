
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int template ;
struct snd_kcontrol_new {char* name; scalar_t__ index; } ;
struct snd_kcontrol {int dummy; } ;


 int memcpy (struct snd_kcontrol_new*,struct snd_kcontrol_new const*,int) ;
 struct snd_kcontrol* snd_ctl_new1 (struct snd_kcontrol_new*,void*) ;

struct snd_kcontrol *snd_soc_cnew(const struct snd_kcontrol_new *_template,
 void *data, char *long_name)
{
 struct snd_kcontrol_new template;

 memcpy(&template, _template, sizeof(template));
 if (long_name)
  template.name = long_name;
 template.index = 0;

 return snd_ctl_new1(&template, data);
}
