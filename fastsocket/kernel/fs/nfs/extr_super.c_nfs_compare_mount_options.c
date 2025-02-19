
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; struct nfs_server* s_fs_info; } ;
struct rpc_clnt {TYPE_1__* cl_auth; } ;
struct nfs_server {scalar_t__ nfs_client; scalar_t__ flags; scalar_t__ wsize; scalar_t__ rsize; scalar_t__ acregmin; scalar_t__ acregmax; scalar_t__ acdirmin; scalar_t__ acdirmax; struct rpc_clnt* client; } ;
struct TYPE_2__ {scalar_t__ au_flavor; } ;


 int NFS_MS_MASK ;

__attribute__((used)) static int nfs_compare_mount_options(const struct super_block *s, const struct nfs_server *b, int flags)
{
 const struct nfs_server *a = s->s_fs_info;
 const struct rpc_clnt *clnt_a = a->client;
 const struct rpc_clnt *clnt_b = b->client;

 if ((s->s_flags & NFS_MS_MASK) != (flags & NFS_MS_MASK))
  goto Ebusy;
 if (a->nfs_client != b->nfs_client)
  goto Ebusy;
 if (a->flags != b->flags)
  goto Ebusy;
 if (a->wsize != b->wsize)
  goto Ebusy;
 if (a->rsize != b->rsize)
  goto Ebusy;
 if (a->acregmin != b->acregmin)
  goto Ebusy;
 if (a->acregmax != b->acregmax)
  goto Ebusy;
 if (a->acdirmin != b->acdirmin)
  goto Ebusy;
 if (a->acdirmax != b->acdirmax)
  goto Ebusy;
 if (clnt_a->cl_auth->au_flavor != clnt_b->cl_auth->au_flavor)
  goto Ebusy;
 return 1;
Ebusy:
 return 0;
}
