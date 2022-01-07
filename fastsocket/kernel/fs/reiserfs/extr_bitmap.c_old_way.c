
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ beg; int end; scalar_t__ search_start; int * inode; scalar_t__ formatted_node; } ;
typedef TYPE_1__ reiserfs_blocknr_hint_t ;
typedef scalar_t__ b_blocknr_t ;
struct TYPE_5__ {int k_dir_id; } ;


 TYPE_3__* INODE_PKEY (int *) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline int old_way(reiserfs_blocknr_hint_t * hint)
{
 b_blocknr_t border;

 if (hint->formatted_node || hint->inode == ((void*)0)) {
  return 0;
 }

 border =
     hint->beg +
     le32_to_cpu(INODE_PKEY(hint->inode)->k_dir_id) % (hint->end -
             hint->beg);
 if (border > hint->search_start)
  hint->search_start = border;

 return 1;
}
