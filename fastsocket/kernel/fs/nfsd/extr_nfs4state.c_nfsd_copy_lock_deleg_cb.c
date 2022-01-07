
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_delegation {struct file_lock* dl_flock; } ;
struct file_lock {scalar_t__ fl_owner; } ;


 int dprintk (char*,struct file_lock*,struct nfs4_delegation*) ;

__attribute__((used)) static
void nfsd_copy_lock_deleg_cb(struct file_lock *new, struct file_lock *fl)
{
 struct nfs4_delegation *dp = (struct nfs4_delegation *)new->fl_owner;

 dprintk("NFSD: nfsd_copy_lock_deleg_cb: new fl %p dp %p\n", new, dp);
 if (!dp)
  return;
 dp->dl_flock = new;
}
