
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int value ;
typedef int ulong_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int u_longlong_t ;
struct TYPE_5__ {scalar_t__ pa_addr; int * pa_file; } ;
typedef TYPE_1__ dt_printarg_t ;
struct TYPE_6__ {unsigned long long cte_bits; } ;
typedef TYPE_2__ ctf_encoding_t ;
typedef scalar_t__ caddr_t ;
typedef int FILE ;


 int NBBY ;
 int bcopy (scalar_t__,int*,size_t) ;
 int fprintf (int *,char*,int ) ;

__attribute__((used)) static void
print_bitfield(dt_printarg_t *pap, ulong_t off, ctf_encoding_t *ep)
{
 FILE *fp = pap->pa_file;
 caddr_t addr = pap->pa_addr + off / NBBY;
 uint64_t mask = (1ULL << ep->cte_bits) - 1;
 uint64_t value = 0;
 size_t size = (ep->cte_bits + (NBBY - 1)) / NBBY;
 uint8_t *buf = (uint8_t *)&value;
 uint8_t shift;







 buf += sizeof (value) - size;
 off += ep->cte_bits;

 bcopy(addr, buf, size);
 shift = off % NBBY;






 shift = NBBY - shift;






 if (off % NBBY != 0)
  value >>= shift;
 value &= mask;

 (void) fprintf(fp, "%#llx", (u_longlong_t)value);
}
