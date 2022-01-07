
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int * ns_gc_inodes_h; } ;


 int kfree (int *) ;
 int nilfs_remove_all_gcinode (struct the_nilfs*) ;

void nilfs_destroy_gccache(struct the_nilfs *nilfs)
{
 if (nilfs->ns_gc_inodes_h) {
  nilfs_remove_all_gcinode(nilfs);
  kfree(nilfs->ns_gc_inodes_h);
  nilfs->ns_gc_inodes_h = ((void*)0);
 }
}
