
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_page_prot; } ;
struct snd_pcm_substream {int dummy; } ;


 int pgprot_noncached (int ) ;
 int snd_pcm_lib_default_mmap (struct snd_pcm_substream*,struct vm_area_struct*) ;

int snd_pcm_lib_mmap_noncached(struct snd_pcm_substream *substream,
          struct vm_area_struct *area)
{
 area->vm_page_prot = pgprot_noncached(area->vm_page_prot);
 return snd_pcm_lib_default_mmap(substream, area);
}
