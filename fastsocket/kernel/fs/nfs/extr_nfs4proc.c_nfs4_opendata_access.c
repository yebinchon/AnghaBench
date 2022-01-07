
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rpc_cred {int dummy; } ;
struct nfs_access_entry {int mask; int jiffies; struct rpc_cred* cred; } ;
struct nfs4_state {int inode; } ;
struct TYPE_2__ {scalar_t__ access_supported; int access_result; } ;
struct nfs4_opendata {TYPE_1__ o_res; } ;
typedef int fmode_t ;


 int FMODE_READ ;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 int NFS4ERR_ACCESS ;
 int __FMODE_EXEC ;
 int jiffies ;
 int nfs4_close_state (struct nfs4_state*,int) ;
 int nfs_access_add_cache (int ,struct nfs_access_entry*) ;
 int nfs_access_set_mask (struct nfs_access_entry*,int ) ;

__attribute__((used)) static int nfs4_opendata_access(struct rpc_cred *cred,
    struct nfs4_opendata *opendata,
    struct nfs4_state *state, fmode_t fmode,
    int openflags)
{
 struct nfs_access_entry cache;
 u32 mask;



 if (opendata->o_res.access_supported == 0)
  return 0;

 mask = 0;




 if (openflags & __FMODE_EXEC) {

  mask = MAY_EXEC;
 } else if (fmode & FMODE_READ)
  mask = MAY_READ;

 cache.cred = cred;
 cache.jiffies = jiffies;
 nfs_access_set_mask(&cache, opendata->o_res.access_result);
 nfs_access_add_cache(state->inode, &cache);

 if ((mask & ~cache.mask & (MAY_READ | MAY_WRITE | MAY_EXEC)) == 0)
  return 0;


 nfs4_close_state(state, fmode);
 return -NFS4ERR_ACCESS;
}
