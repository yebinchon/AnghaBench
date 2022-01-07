
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dma_buffer {int dummy; } ;
struct snd_mem_list {unsigned int id; int list; struct snd_dma_buffer buffer; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 struct snd_mem_list* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_mutex ;
 int mem_list_head ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int snd_dma_reserve_buf(struct snd_dma_buffer *dmab, unsigned int id)
{
 struct snd_mem_list *mem;

 if (WARN_ON(!dmab))
  return -EINVAL;
 mem = kmalloc(sizeof(*mem), GFP_KERNEL);
 if (! mem)
  return -ENOMEM;
 mutex_lock(&list_mutex);
 mem->buffer = *dmab;
 mem->id = id;
 list_add_tail(&mem->list, &mem_list_head);
 mutex_unlock(&list_mutex);
 return 0;
}
