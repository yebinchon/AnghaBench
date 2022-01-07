
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* ddg_scc_ptr ;
struct TYPE_2__ {int recurrence_length; } ;



__attribute__((used)) static int
compare_sccs (const void *s1, const void *s2)
{
  int rec_l1 = (*(ddg_scc_ptr *)s1)->recurrence_length;
  int rec_l2 = (*(ddg_scc_ptr *)s2)->recurrence_length;
  return ((rec_l2 > rec_l1) - (rec_l2 < rec_l1));

}
