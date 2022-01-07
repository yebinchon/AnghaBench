
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int * ns_gc_inodes_h; int ns_gc_inodes; } ;
struct hlist_head {int dummy; } ;


 int BUG_ON (int *) ;
 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int NILFS_GCINODE_HASH_SIZE ;
 int * kmalloc (int,int ) ;

int nilfs_init_gccache(struct the_nilfs *nilfs)
{
 int loop;

 BUG_ON(nilfs->ns_gc_inodes_h);

 INIT_LIST_HEAD(&nilfs->ns_gc_inodes);

 nilfs->ns_gc_inodes_h =
  kmalloc(sizeof(struct hlist_head) * NILFS_GCINODE_HASH_SIZE,
   GFP_NOFS);
 if (nilfs->ns_gc_inodes_h == ((void*)0))
  return -ENOMEM;

 for (loop = 0; loop < NILFS_GCINODE_HASH_SIZE; loop++)
  INIT_HLIST_HEAD(&nilfs->ns_gc_inodes_h[loop]);
 return 0;
}
