
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_delegation {int * dl_flock; int dl_count; } ;
struct file_lock {int fl_flags; scalar_t__ fl_owner; } ;


 int FL_LEASE ;
 int atomic_read (int *) ;
 int dprintk (char*,struct file_lock*,struct nfs4_delegation*,int ) ;

__attribute__((used)) static
void nfsd_release_deleg_cb(struct file_lock *fl)
{
 struct nfs4_delegation *dp = (struct nfs4_delegation *)fl->fl_owner;

 dprintk("NFSD nfsd_release_deleg_cb: fl %p dp %p dl_count %d\n", fl,dp, atomic_read(&dp->dl_count));

 if (!(fl->fl_flags & FL_LEASE) || !dp)
  return;
 dp->dl_flock = ((void*)0);
}
