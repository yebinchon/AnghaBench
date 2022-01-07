
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vme_dma_list {int mtx; TYPE_1__* parent; } ;
struct vme_bridge {int (* dma_list_exec ) (struct vme_dma_list*) ;} ;
struct TYPE_2__ {struct vme_bridge* parent; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int printk (char*) ;
 int stub1 (struct vme_dma_list*) ;

int vme_dma_list_exec(struct vme_dma_list *list)
{
 struct vme_bridge *bridge = list->parent->parent;
 int retval;

 if (bridge->dma_list_exec == ((void*)0)) {
  printk("Link List DMA execution not supported\n");
  return -EINVAL;
 }

 mutex_lock(&(list->mtx));

 retval = bridge->dma_list_exec(list);

 mutex_unlock(&(list->mtx));

 return retval;
}
