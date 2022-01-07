
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dcache_block {int* data; int * state; int refs; int addr; struct dcache_block* p; } ;
struct TYPE_2__ {struct dcache_block* valid_head; } ;


 int DCACHE_SIZE ;
 int LINE_SIZE ;
 TYPE_1__* last_cache ;
 int paddr (int ) ;
 int printf_filtered (char*,...) ;

__attribute__((used)) static void
dcache_info (char *exp, int tty)
{
  struct dcache_block *p;

  printf_filtered ("Dcache line width %d, depth %d\n",
     LINE_SIZE, DCACHE_SIZE);

  if (last_cache)
    {
      printf_filtered ("Cache state:\n");

      for (p = last_cache->valid_head; p; p = p->p)
 {
   int j;
   printf_filtered ("Line at %s, referenced %d times\n",
      paddr (p->addr), p->refs);

   for (j = 0; j < LINE_SIZE; j++)
     printf_filtered ("%02x", p->data[j] & 0xFF);
   printf_filtered ("\n");

   for (j = 0; j < LINE_SIZE; j++)
     printf_filtered ("%2x", p->state[j]);
   printf_filtered ("\n");
 }
    }
}
