
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char**) ;
 char** cea_speaker_allocation_names ;
 scalar_t__ snprintf (char*,int,char*,char*) ;

void snd_print_channel_allocation(int spk_alloc, char *buf, int buflen)
{
 int i, j;

 for (i = 0, j = 0; i < ARRAY_SIZE(cea_speaker_allocation_names); i++) {
  if (spk_alloc & (1 << i))
   j += snprintf(buf + j, buflen - j, " %s",
     cea_speaker_allocation_names[i]);
 }
 buf[j] = '\0';
}
