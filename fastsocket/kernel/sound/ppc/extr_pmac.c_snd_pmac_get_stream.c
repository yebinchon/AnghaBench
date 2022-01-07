
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_stream {int dummy; } ;
struct snd_pmac {struct pmac_stream capture; struct pmac_stream playback; } ;




 int snd_BUG () ;

__attribute__((used)) static struct pmac_stream *snd_pmac_get_stream(struct snd_pmac *chip, int stream)
{
 switch (stream) {
 case 128:
  return &chip->playback;
 case 129:
  return &chip->capture;
 default:
  snd_BUG();
  return ((void*)0);
 }
}
