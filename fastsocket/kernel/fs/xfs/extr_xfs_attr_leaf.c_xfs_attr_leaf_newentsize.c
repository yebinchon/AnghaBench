
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xfs_attr_leaf_entsize_local (int,int) ;
 int xfs_attr_leaf_entsize_local_max (int) ;
 int xfs_attr_leaf_entsize_remote (int) ;

int
xfs_attr_leaf_newentsize(int namelen, int valuelen, int blocksize, int *local)
{
 int size;

 size = xfs_attr_leaf_entsize_local(namelen, valuelen);
 if (size < xfs_attr_leaf_entsize_local_max(blocksize)) {
  if (local) {
   *local = 1;
  }
 } else {
  size = xfs_attr_leaf_entsize_remote(namelen);
  if (local) {
   *local = 0;
  }
 }
 return(size);
}
