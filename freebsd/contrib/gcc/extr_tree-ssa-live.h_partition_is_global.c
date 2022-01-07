
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* tree_live_info_p ;
struct TYPE_3__ {int global; } ;


 int bitmap_bit_p (int ,int) ;
 int gcc_assert (int ) ;

__attribute__((used)) static inline int
partition_is_global (tree_live_info_p live, int p)
{
  gcc_assert (live->global);
  return bitmap_bit_p (live->global, p);
}
