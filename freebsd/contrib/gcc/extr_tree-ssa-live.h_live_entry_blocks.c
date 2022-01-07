
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* tree_live_info_p ;
typedef int bitmap ;
struct TYPE_3__ {int * livein; } ;


 int gcc_assert (int *) ;

__attribute__((used)) static inline bitmap
live_entry_blocks (tree_live_info_p live, int p)
{
  gcc_assert (live->livein);
  return live->livein[p];
}
