
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 unsigned long cmpxchg (unsigned long*,unsigned long,unsigned long) ;
 int cpu_relax () ;

__attribute__((used)) static int clear_bits_ll(unsigned long *addr, unsigned long mask_to_clear)
{
 unsigned long val, nval;

 nval = *addr;
 do {
  val = nval;
  if ((val & mask_to_clear) != mask_to_clear)
   return -EBUSY;
  cpu_relax();
 } while ((nval = cmpxchg(addr, val, val & ~mask_to_clear)) != val);

 return 0;
}
