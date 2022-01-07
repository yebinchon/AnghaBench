
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct coda_inode_info {scalar_t__ c_cached_epoch; } ;


 struct coda_inode_info* ITOC (struct inode*) ;
 scalar_t__ atomic_read (int *) ;
 int permission_epoch ;

void coda_cache_clear_inode(struct inode *inode)
{
 struct coda_inode_info *cii = ITOC(inode);
 cii->c_cached_epoch = atomic_read(&permission_epoch) - 1;
}
