
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_delegation {int dl_file; scalar_t__ dl_flock; } ;
struct file {int dummy; } ;


 int F_UNLCK ;
 int O_RDONLY ;
 int dprintk (char*,struct nfs4_delegation*) ;
 struct file* find_readable_file (int ) ;
 int nfs4_file_put_access (int ,int ) ;
 int vfs_setlease (struct file*,int ,scalar_t__*) ;

__attribute__((used)) static void
nfs4_close_delegation(struct nfs4_delegation *dp)
{
 struct file *filp = find_readable_file(dp->dl_file);

 dprintk("NFSD: close_delegation dp %p\n",dp);
 if (dp->dl_flock)
  vfs_setlease(filp, F_UNLCK, &dp->dl_flock);
 nfs4_file_put_access(dp->dl_file, O_RDONLY);
}
