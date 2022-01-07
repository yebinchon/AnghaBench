
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* partition_pair_p ;
struct TYPE_2__ {int cost; } ;



__attribute__((used)) static
int compare_pairs (const void *p1, const void *p2)
{
  return (*(partition_pair_p *)p2)->cost - (*(partition_pair_p *)p1)->cost;
}
