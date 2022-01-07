
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int rq_rcv_buf; } ;
struct nfs_getaclres {int seq_res; int * acl_scratch; } ;
struct compound_hdr {int dummy; } ;
typedef int __be32 ;


 int PAGE_SIZE ;
 int decode_compound_hdr (struct xdr_stream*,struct compound_hdr*) ;
 int decode_getacl (struct xdr_stream*,struct rpc_rqst*,struct nfs_getaclres*) ;
 int decode_putfh (struct xdr_stream*) ;
 int decode_sequence (struct xdr_stream*,int *,struct rpc_rqst*) ;
 void* page_address (int *) ;
 int xdr_init_decode (struct xdr_stream*,int *,int *) ;
 int xdr_set_scratch_buffer (struct xdr_stream*,void*,int ) ;

__attribute__((used)) static int
nfs4_xdr_dec_getacl(struct rpc_rqst *rqstp, __be32 *p,
      struct nfs_getaclres *res)
{
 struct xdr_stream xdr;
 struct compound_hdr hdr;
 int status;

 xdr_init_decode(&xdr, &rqstp->rq_rcv_buf, p);
 if (res->acl_scratch != ((void*)0)) {
  void *p = page_address(res->acl_scratch);
  xdr_set_scratch_buffer(&xdr, p, PAGE_SIZE);
 }
 status = decode_compound_hdr(&xdr, &hdr);
 if (status)
  goto out;
 status = decode_sequence(&xdr, &res->seq_res, rqstp);
 if (status)
  goto out;
 status = decode_putfh(&xdr);
 if (status)
  goto out;
 status = decode_getacl(&xdr, rqstp, res);

out:
 return status;
}
