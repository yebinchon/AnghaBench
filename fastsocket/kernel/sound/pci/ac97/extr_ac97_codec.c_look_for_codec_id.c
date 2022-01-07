
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec_id {int id; unsigned int mask; } ;



__attribute__((used)) static const struct ac97_codec_id *look_for_codec_id(const struct ac97_codec_id *table,
           unsigned int id)
{
 const struct ac97_codec_id *pid;

 for (pid = table; pid->id; pid++)
  if (pid->id == (id & pid->mask))
   return pid;
 return ((void*)0);
}
