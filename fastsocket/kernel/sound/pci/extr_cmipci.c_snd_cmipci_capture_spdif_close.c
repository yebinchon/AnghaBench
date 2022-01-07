
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct cmipci {int dummy; } ;


 int CM_OPEN_SPDIF_CAPTURE ;
 int close_device_check (struct cmipci*,int ) ;
 struct cmipci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cmipci_capture_spdif_close(struct snd_pcm_substream *substream)
{
 struct cmipci *cm = snd_pcm_substream_chip(substream);
 close_device_check(cm, CM_OPEN_SPDIF_CAPTURE);
 return 0;
}
