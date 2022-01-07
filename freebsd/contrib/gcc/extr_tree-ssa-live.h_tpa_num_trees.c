
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* tpa_p ;
struct TYPE_3__ {int num_trees; } ;



__attribute__((used)) static inline int
tpa_num_trees (tpa_p tpa)
{
  return tpa->num_trees;
}
