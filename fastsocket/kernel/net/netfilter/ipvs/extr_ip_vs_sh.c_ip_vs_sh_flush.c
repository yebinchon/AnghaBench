
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_vs_sh_bucket {TYPE_1__* dest; } ;
struct TYPE_2__ {int refcnt; } ;


 int IP_VS_SH_TAB_SIZE ;
 int atomic_dec (int *) ;

__attribute__((used)) static void ip_vs_sh_flush(struct ip_vs_sh_bucket *tbl)
{
 int i;
 struct ip_vs_sh_bucket *b;

 b = tbl;
 for (i=0; i<IP_VS_SH_TAB_SIZE; i++) {
  if (b->dest) {
   atomic_dec(&b->dest->refcnt);
   b->dest = ((void*)0);
  }
  b++;
 }
}
