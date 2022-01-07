
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ USE_32BIT_SHARED ;
 char* cvmx_fpa_alloc (int) ;
 int cvmx_ptr_to_phys (char*) ;
 int kfree (int ) ;
 int phys_to_virt (int ) ;
 int pr_warning (char*,...) ;

__attribute__((used)) static void cvm_oct_free_hw_memory(int pool, int size, int elements)
{
 if (USE_32BIT_SHARED) {
  pr_warning("Warning: 32 shared memory is not freeable\n");
 } else {
  char *memory;
  do {
   memory = cvmx_fpa_alloc(pool);
   if (memory) {
    elements--;
    kfree(phys_to_virt(cvmx_ptr_to_phys(memory)));
   }
  } while (memory);

  if (elements < 0)
   pr_warning("Freeing of pool %u had too many "
       "buffers (%d)\n",
          pool, elements);
  else if (elements > 0)
   pr_warning("Warning: Freeing of pool %u is "
    "missing %d buffers\n",
        pool, elements);
 }
}
