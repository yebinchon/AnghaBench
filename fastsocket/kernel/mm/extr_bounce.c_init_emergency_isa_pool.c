
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int ISA_POOL_SIZE ;
 scalar_t__ isa_page_pool ;
 int mempool_alloc_pages_isa ;
 scalar_t__ mempool_create (int ,int ,int ,void*) ;
 int mempool_free_pages ;
 int printk (char*,int ) ;

int init_emergency_isa_pool(void)
{
 if (isa_page_pool)
  return 0;

 isa_page_pool = mempool_create(ISA_POOL_SIZE, mempool_alloc_pages_isa,
           mempool_free_pages, (void *) 0);
 BUG_ON(!isa_page_pool);

 printk("isa bounce pool size: %d pages\n", ISA_POOL_SIZE);
 return 0;
}
