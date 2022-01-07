
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* tree_live_info_p ;
struct TYPE_3__ {int * livein; } ;


 int bitmap_ior_into (int ,int ) ;
 int bitmap_zero (int ) ;

__attribute__((used)) static inline void
live_merge_and_clear (tree_live_info_p live, int p1, int p2)
{
  bitmap_ior_into (live->livein[p1], live->livein[p2]);
  bitmap_zero (live->livein[p2]);
}
