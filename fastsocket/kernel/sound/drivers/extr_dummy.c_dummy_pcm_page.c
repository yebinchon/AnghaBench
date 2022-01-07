
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {size_t stream; } ;
struct page {int dummy; } ;


 int * dummy_page ;
 struct page* virt_to_page (int ) ;

__attribute__((used)) static struct page *dummy_pcm_page(struct snd_pcm_substream *substream,
       unsigned long offset)
{
 return virt_to_page(dummy_page[substream->stream]);
}
