
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oxu_hcd {int* db_used; int mem_lock; TYPE_1__* mem; } ;
struct ehci_qtd {int qtd_buffer_len; void* buffer; int buffer_dma; } ;
struct TYPE_2__ {int * db_pool; } ;


 int BUFFER_NUM ;
 int BUFFER_SIZE ;
 int ENOMEM ;
 scalar_t__ max (int,int) ;
 int oxu_err (struct oxu_hcd*,char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int virt_to_phys (void*) ;

__attribute__((used)) static int oxu_buf_alloc(struct oxu_hcd *oxu, struct ehci_qtd *qtd, int len)
{
 int n_blocks;
 int a_blocks;
 int i, j;


 if (len > BUFFER_SIZE * BUFFER_NUM) {
  oxu_err(oxu, "buffer too big (%d)\n", len);
  return -ENOMEM;
 }

 spin_lock(&oxu->mem_lock);


 n_blocks = (len + BUFFER_SIZE - 1) / BUFFER_SIZE;


 for (a_blocks = 1; a_blocks < n_blocks; a_blocks <<= 1)
  ;


 for (i = 0; i < BUFFER_NUM;
   i += max(a_blocks, (int)oxu->db_used[i])) {


  for (j = 0; j < a_blocks; j++)
   if (oxu->db_used[i + j])
    break;

  if (j != a_blocks)
   continue;


  qtd->buffer = (void *) &oxu->mem->db_pool[i];
  qtd->buffer_dma = virt_to_phys(qtd->buffer);

  qtd->qtd_buffer_len = BUFFER_SIZE * a_blocks;
  oxu->db_used[i] = a_blocks;

  spin_unlock(&oxu->mem_lock);

  return 0;
 }



 spin_unlock(&oxu->mem_lock);

 return -ENOMEM;
}
