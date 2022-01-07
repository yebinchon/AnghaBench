
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* tpa_p ;
struct TYPE_3__ {int uncompressed_num; int num_trees; } ;


 int gcc_assert (int) ;

__attribute__((used)) static inline void
tpa_decompact(tpa_p tpa)
{
  gcc_assert (tpa->uncompressed_num != -1);
  tpa->num_trees = tpa->uncompressed_num;
}
