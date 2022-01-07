
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parsed_partitions {int limit; int name; TYPE_1__* parts; } ;
typedef void* sector_t ;
struct TYPE_2__ {void* size; void* from; } ;


 int printk (char*,int ,int) ;

__attribute__((used)) static inline void
put_partition(struct parsed_partitions *p, int n, sector_t from, sector_t size)
{
 if (n < p->limit) {
  p->parts[n].from = from;
  p->parts[n].size = size;
  printk(" %s%d", p->name, n);
 }
}
