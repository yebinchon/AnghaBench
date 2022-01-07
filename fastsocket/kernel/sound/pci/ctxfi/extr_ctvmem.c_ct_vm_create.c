
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ct_vm_block {int size; int list; scalar_t__ addr; } ;
struct ct_vm {int size; int unused; int used; int get_ptp_phys; int unmap; int map; int * ptp; int lock; } ;


 int CT_ADDRS_PER_PAGE ;
 int CT_PTP_NUM ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int SNDRV_DMA_TYPE_DEV ;
 int ct_get_ptp_phys ;
 int ct_vm_destroy (struct ct_vm*) ;
 int ct_vm_map ;
 int ct_vm_unmap ;
 void* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_init (int *) ;
 int snd_dma_alloc_pages (int ,int ,int ,int *) ;
 int snd_dma_pci_data (struct pci_dev*) ;

int ct_vm_create(struct ct_vm **rvm, struct pci_dev *pci)
{
 struct ct_vm *vm;
 struct ct_vm_block *block;
 int i, err = 0;

 *rvm = ((void*)0);

 vm = kzalloc(sizeof(*vm), GFP_KERNEL);
 if (!vm)
  return -ENOMEM;

 mutex_init(&vm->lock);


 for (i = 0; i < CT_PTP_NUM; i++) {
  err = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV,
       snd_dma_pci_data(pci),
       PAGE_SIZE, &vm->ptp[i]);
  if (err < 0)
   break;
 }
 if (err < 0) {

  ct_vm_destroy(vm);
  return -ENOMEM;
 }
 vm->size = CT_ADDRS_PER_PAGE * i;
 vm->map = ct_vm_map;
 vm->unmap = ct_vm_unmap;
 vm->get_ptp_phys = ct_get_ptp_phys;
 INIT_LIST_HEAD(&vm->unused);
 INIT_LIST_HEAD(&vm->used);
 block = kzalloc(sizeof(*block), GFP_KERNEL);
 if (((void*)0) != block) {
  block->addr = 0;
  block->size = vm->size;
  list_add(&block->list, &vm->unused);
 }

 *rvm = vm;
 return 0;
}
