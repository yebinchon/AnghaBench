
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_rqst {int rq_svec; int rq_slen; } ;
struct nfs_renameargs {TYPE_1__* new_name; int new_dir; TYPE_2__* old_name; int old_dir; } ;
typedef int __be32 ;
struct TYPE_4__ {int len; int name; } ;
struct TYPE_3__ {int len; int name; } ;


 int xdr_adjust_iovec (int ,int *) ;
 int * xdr_encode_array (int *,int ,int ) ;
 int * xdr_encode_fhandle (int *,int ) ;

__attribute__((used)) static int
nfs3_xdr_renameargs(struct rpc_rqst *req, __be32 *p, struct nfs_renameargs *args)
{
 p = xdr_encode_fhandle(p, args->old_dir);
 p = xdr_encode_array(p, args->old_name->name, args->old_name->len);
 p = xdr_encode_fhandle(p, args->new_dir);
 p = xdr_encode_array(p, args->new_name->name, args->new_name->len);
 req->rq_slen = xdr_adjust_iovec(req->rq_svec, p);
 return 0;
}
