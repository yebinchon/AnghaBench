
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* totals; } ;
struct ggc_pch_data {TYPE_1__ d; } ;
struct TYPE_4__ {int pagesize; } ;


 TYPE_2__ G ;
 unsigned int NUM_ORDERS ;
 int OBJECT_SIZE (unsigned int) ;
 scalar_t__ ROUND_UP (int,int ) ;

size_t
ggc_pch_total_size (struct ggc_pch_data *d)
{
  size_t a = 0;
  unsigned i;

  for (i = 0; i < NUM_ORDERS; i++)
    a += ROUND_UP (d->d.totals[i] * OBJECT_SIZE (i), G.pagesize);
  return a;
}
