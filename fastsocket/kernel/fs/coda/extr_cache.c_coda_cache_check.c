
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct coda_inode_info {int c_cached_perm; scalar_t__ c_uid; scalar_t__ c_cached_epoch; } ;


 struct coda_inode_info* ITOC (struct inode*) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ current_fsuid () ;
 int permission_epoch ;

int coda_cache_check(struct inode *inode, int mask)
{
 struct coda_inode_info *cii = ITOC(inode);
        int hit;

        hit = (mask & cii->c_cached_perm) == mask &&
  cii->c_uid == current_fsuid() &&
  cii->c_cached_epoch == atomic_read(&permission_epoch);

        return hit;
}
