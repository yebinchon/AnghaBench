
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vme_dma_list {int mtx; TYPE_1__* parent; } ;
struct vme_bridge {int (* dma_list_empty ) (struct vme_dma_list*) ;} ;
struct TYPE_2__ {struct vme_bridge* parent; } ;


 int EINVAL ;
 int kfree (struct vme_dma_list*) ;
 scalar_t__ mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int printk (char*) ;
 int stub1 (struct vme_dma_list*) ;

int vme_dma_list_free(struct vme_dma_list *list)
{
 struct vme_bridge *bridge = list->parent->parent;
 int retval;

 if (bridge->dma_list_empty == ((void*)0)) {
  printk("Emptying of Link Lists not supported\n");
  return -EINVAL;
 }

 if (mutex_trylock(&(list->mtx))) {
  printk("Link List in use\n");
  return -EINVAL;
 }





 retval = bridge->dma_list_empty(list);
 if (retval) {
  printk("Unable to empty link-list entries\n");
  mutex_unlock(&(list->mtx));
  return retval;
 }
 mutex_unlock(&(list->mtx));
 kfree(list);

 return retval;
}
