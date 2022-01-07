
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vme_dma_list {int mtx; TYPE_1__* parent; } ;
struct vme_dma_attr {int dummy; } ;
struct vme_bridge {int (* dma_list_add ) (struct vme_dma_list*,struct vme_dma_attr*,struct vme_dma_attr*,size_t) ;} ;
struct TYPE_2__ {struct vme_bridge* parent; } ;


 int EINVAL ;
 scalar_t__ mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int printk (char*) ;
 int stub1 (struct vme_dma_list*,struct vme_dma_attr*,struct vme_dma_attr*,size_t) ;

int vme_dma_list_add(struct vme_dma_list *list, struct vme_dma_attr *src,
 struct vme_dma_attr *dest, size_t count)
{
 struct vme_bridge *bridge = list->parent->parent;
 int retval;

 if (bridge->dma_list_add == ((void*)0)) {
  printk("Link List DMA generation not supported\n");
  return -EINVAL;
 }

 if (mutex_trylock(&(list->mtx))) {
  printk("Link List already submitted\n");
  return -EINVAL;
 }

 retval = bridge->dma_list_add(list, src, dest, count);

 mutex_unlock(&(list->mtx));

 return retval;
}
