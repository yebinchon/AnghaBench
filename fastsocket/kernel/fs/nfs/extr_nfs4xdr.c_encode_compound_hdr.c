
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct rpc_rqst {TYPE_1__* rq_cred; } ;
struct rpc_auth {scalar_t__ au_rslack; } ;
struct compound_hdr {scalar_t__ replen; scalar_t__ taglen; int nops; void** nops_p; int minorversion; int tag; } ;
typedef void* __be32 ;
struct TYPE_2__ {struct rpc_auth* cr_auth; } ;


 int BUG_ON (int) ;
 scalar_t__ NFS4_MAXTAGLEN ;
 scalar_t__ RPC_REPHDRSIZE ;
 void* cpu_to_be32 (int ) ;
 int dprintk (char*,int,int ) ;
 void** reserve_space (struct xdr_stream*,scalar_t__) ;
 void** xdr_encode_opaque (void**,int ,scalar_t__) ;

__attribute__((used)) static void encode_compound_hdr(struct xdr_stream *xdr,
    struct rpc_rqst *req,
    struct compound_hdr *hdr)
{
 __be32 *p;
 struct rpc_auth *auth = req->rq_cred->cr_auth;




 hdr->replen = RPC_REPHDRSIZE + auth->au_rslack + 3 + hdr->taglen;

 dprintk("encode_compound: tag=%.*s\n", (int)hdr->taglen, hdr->tag);
 BUG_ON(hdr->taglen > NFS4_MAXTAGLEN);
 p = reserve_space(xdr, 4 + hdr->taglen + 8);
 p = xdr_encode_opaque(p, hdr->tag, hdr->taglen);
 *p++ = cpu_to_be32(hdr->minorversion);
 hdr->nops_p = p;
 *p = cpu_to_be32(hdr->nops);
}
