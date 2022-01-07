
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ address; scalar_t__ size; } ;
struct reserve_info {TYPE_1__ re; } ;



__attribute__((used)) static int cmp_reserve_info(const void *ax, const void *bx)
{
 const struct reserve_info *a, *b;

 a = *((const struct reserve_info * const *)ax);
 b = *((const struct reserve_info * const *)bx);

 if (a->re.address < b->re.address)
  return -1;
 else if (a->re.address > b->re.address)
  return 1;
 else if (a->re.size < b->re.size)
  return -1;
 else if (a->re.size > b->re.size)
  return 1;
 else
  return 0;
}
