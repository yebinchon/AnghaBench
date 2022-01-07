
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void
cpuid(unsigned int op, unsigned int *a, unsigned int *b, unsigned int *c,
      unsigned int *d)
{
 __asm__ __volatile__ (".byte 0x53\n\tcpuid\n\t"
         "movl %%ebx, %%esi\n\t.byte 0x5b"
   : "=a" (*a),
   "=S" (*b),
   "=c" (*c),
   "=d" (*d)
   : "a" (op));
}
