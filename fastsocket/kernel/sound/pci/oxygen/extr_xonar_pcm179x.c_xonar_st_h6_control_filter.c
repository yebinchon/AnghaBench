
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {int name; } ;


 int strncmp (int ,char*,int) ;

__attribute__((used)) static int xonar_st_h6_control_filter(struct snd_kcontrol_new *template)
{
 if (!strncmp(template->name, "Master Playback ", 16))

  return 1;
 return 0;
}
