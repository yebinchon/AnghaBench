
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_message {struct nfs_setaclres* rpc_resp; struct nfs_setaclargs* rpc_argp; int * rpc_proc; } ;
struct page {int dummy; } ;
struct nfs_setaclres {int seq_res; } ;
struct nfs_setaclargs {size_t acl_len; int seq_args; int acl_pgbase; struct page** acl_pages; int fh; } ;
struct nfs_server {int client; } ;
struct inode {int i_lock; } ;
struct TYPE_2__ {int cache_validity; } ;


 unsigned int ARRAY_SIZE (struct page**) ;
 unsigned int DIV_ROUND_UP (size_t,int ) ;
 int EOPNOTSUPP ;
 int ERANGE ;
 int NFS4ACL_MAXPAGES ;
 size_t NFSPROC4_CLNT_SETACL ;
 int NFS_FH (struct inode*) ;
 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_ATTR ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int PAGE_SIZE ;
 int buf_to_pages_noslab (void const*,size_t,struct page**,int *) ;
 int nfs4_call_sync (int ,struct nfs_server*,struct rpc_message*,int *,int *,int) ;
 int * nfs4_procedures ;
 int nfs4_server_supports_acls (struct nfs_server*) ;
 int nfs_access_zap_cache (struct inode*) ;
 int nfs_inode_return_delegation (struct inode*) ;
 int nfs_zap_acl_cache (struct inode*) ;
 int put_page (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int __nfs4_proc_set_acl(struct inode *inode, const void *buf, size_t buflen)
{
 struct nfs_server *server = NFS_SERVER(inode);
 struct page *pages[NFS4ACL_MAXPAGES];
 struct nfs_setaclargs arg = {
  .fh = NFS_FH(inode),
  .acl_pages = pages,
  .acl_len = buflen,
 };
 struct nfs_setaclres res;
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_SETACL],
  .rpc_argp = &arg,
  .rpc_resp = &res,
 };
 unsigned int npages = DIV_ROUND_UP(buflen, PAGE_SIZE);
 int ret, i;

 if (!nfs4_server_supports_acls(server))
  return -EOPNOTSUPP;
 if (npages > ARRAY_SIZE(pages))
  return -ERANGE;
 i = buf_to_pages_noslab(buf, buflen, arg.acl_pages, &arg.acl_pgbase);
 if (i < 0)
  return i;
 nfs_inode_return_delegation(inode);
 ret = nfs4_call_sync(server->client, server, &msg, &arg.seq_args, &res.seq_res, 1);





 for (; i > 0; i--)
  put_page(pages[i-1]);





 spin_lock(&inode->i_lock);
 NFS_I(inode)->cache_validity |= NFS_INO_INVALID_ATTR;
 spin_unlock(&inode->i_lock);
 nfs_access_zap_cache(inode);
 nfs_zap_acl_cache(inode);
 return ret;
}
