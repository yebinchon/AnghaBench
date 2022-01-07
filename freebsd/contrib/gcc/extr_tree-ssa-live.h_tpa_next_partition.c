
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* tpa_p ;
struct TYPE_3__ {int* next_partition; } ;



__attribute__((used)) static inline int
tpa_next_partition (tpa_p tpa, int i)
{
  return tpa->next_partition[i];
}
