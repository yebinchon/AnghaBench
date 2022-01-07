
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* tree_live_info_p ;
typedef TYPE_2__* basic_block ;
struct TYPE_6__ {int index; } ;
struct TYPE_5__ {int global; int * livein; } ;


 int bitmap_set_bit (int ,int) ;

__attribute__((used)) static inline void
make_live_on_entry (tree_live_info_p live, basic_block bb , int p)
{
  bitmap_set_bit (live->livein[p], bb->index);
  bitmap_set_bit (live->global, p);
}
