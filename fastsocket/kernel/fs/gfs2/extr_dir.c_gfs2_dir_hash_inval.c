
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int * i_hash_cache; } ;
typedef int __be64 ;


 scalar_t__ is_vmalloc_addr (int *) ;
 int kfree (int *) ;
 int vfree (int *) ;

void gfs2_dir_hash_inval(struct gfs2_inode *ip)
{
 __be64 *hc = ip->i_hash_cache;
 ip->i_hash_cache = ((void*)0);
 if (is_vmalloc_addr(hc))
  vfree(hc);
 else
  kfree(hc);
}
