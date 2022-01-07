
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_util_memhdr {int dummy; } ;
struct snd_sf_sample {int * block; } ;
struct snd_emux {int dummy; } ;


 int snd_util_mem_free (struct snd_util_memhdr*,int *) ;

int
snd_emu8000_sample_free(struct snd_emux *rec, struct snd_sf_sample *sp,
   struct snd_util_memhdr *hdr)
{
 if (sp->block) {
  snd_util_mem_free(hdr, sp->block);
  sp->block = ((void*)0);
 }
 return 0;
}
