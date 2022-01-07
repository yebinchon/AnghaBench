
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_adsp_module {int dummy; } ;


 int DLOG (char*,void*,unsigned long,...) ;
 scalar_t__ adsp_pmem_fixup_kvaddr (struct msm_adsp_module*,void**,unsigned long*,unsigned long) ;
 void* high_low_short_to_ptr (unsigned short,unsigned short) ;
 int ptr_to_high_low_short (void*,unsigned short*,unsigned short*) ;

__attribute__((used)) static int pmem_fixup_high_low(unsigned short *high,
    unsigned short *low,
    unsigned short size_high,
    unsigned short size_low,
    struct msm_adsp_module *module,
    unsigned long *addr, unsigned long *size)
{
 void *phys_addr;
 unsigned long phys_size;
 unsigned long kvaddr;

 phys_addr = high_low_short_to_ptr(*high, *low);
 phys_size = (unsigned long)high_low_short_to_ptr(size_high, size_low);
 DLOG("virt %x %x\n", phys_addr, phys_size);
 if (adsp_pmem_fixup_kvaddr(module, &phys_addr, &kvaddr, phys_size)) {
  DLOG("ah%x al%x sh%x sl%x addr %x size %x\n",
   *high, *low, size_high, size_low, phys_addr, phys_size);
  return -1;
 }
 ptr_to_high_low_short(phys_addr, high, low);
 DLOG("phys %x %x\n", phys_addr, phys_size);
 if (addr)
  *addr = kvaddr;
 if (size)
  *size = phys_size;
 return 0;
}
