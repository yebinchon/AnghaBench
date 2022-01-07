
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int CONFIG_CAVIUM_RESERVE32 ;
 int GFP_ATOMIC ;
 scalar_t__ USE_32BIT_SHARED ;
 char* cvmx_bootmem_alloc_range (int,int,scalar_t__,scalar_t__) ;
 int cvmx_fpa_free (char*,int,int ) ;
 char* kmalloc (int,int ) ;
 int panic (char*,int,int) ;
 int pr_notice (char*,char*,char*) ;
 int pr_warning (char*,int,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int cvm_oct_fill_hw_memory(int pool, int size, int elements)
{
 char *memory;
 int freed = elements;

 if (USE_32BIT_SHARED) {
  extern uint64_t octeon_reserve32_memory;

  memory =
      cvmx_bootmem_alloc_range(elements * size, 128,
          octeon_reserve32_memory,
          octeon_reserve32_memory +
          (CONFIG_CAVIUM_RESERVE32 << 20) -
          1);
  if (memory == ((void*)0))
   panic("Unable to allocate %u bytes for FPA pool %d\n",
         elements * size, pool);

  pr_notice("Memory range %p - %p reserved for "
     "hardware\n", memory,
     memory + elements * size - 1);

  while (freed) {
   cvmx_fpa_free(memory, pool, 0);
   memory += size;
   freed--;
  }
 } else {
  while (freed) {

   memory = kmalloc(size + 127, GFP_ATOMIC);
   if (unlikely(memory == ((void*)0))) {
    pr_warning("Unable to allocate %u bytes for "
        "FPA pool %d\n",
         elements * size, pool);
    break;
   }
   memory = (char *)(((unsigned long)memory + 127) & -128);
   cvmx_fpa_free(memory, pool, 0);
   freed--;
  }
 }
 return elements - freed;
}
