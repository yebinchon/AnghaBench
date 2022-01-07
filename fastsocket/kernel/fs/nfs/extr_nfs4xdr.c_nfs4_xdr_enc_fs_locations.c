
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int rq_rcv_buf; int rq_snd_buf; } ;
struct nfs4_fs_locations_arg {int page; int bitmask; int name; int dir_fh; int seq_args; } ;
struct compound_hdr {int replen; int minorversion; } ;
typedef int __be32 ;


 int PAGE_SIZE ;
 int encode_compound_hdr (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ;
 int encode_fs_locations (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_lookup (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_nops (struct compound_hdr*) ;
 int encode_putfh (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_sequence (struct xdr_stream*,int *,struct compound_hdr*) ;
 int nfs4_xdr_minorversion (int *) ;
 int xdr_init_encode (struct xdr_stream*,int *,int *) ;
 int xdr_inline_pages (int *,int,int *,int ,int ) ;

__attribute__((used)) static int nfs4_xdr_enc_fs_locations(struct rpc_rqst *req, __be32 *p, struct nfs4_fs_locations_arg *args)
{
 struct xdr_stream xdr;
 struct compound_hdr hdr = {
  .minorversion = nfs4_xdr_minorversion(&args->seq_args),
 };
 uint32_t replen;

 xdr_init_encode(&xdr, &req->rq_snd_buf, p);
 encode_compound_hdr(&xdr, req, &hdr);
 encode_sequence(&xdr, &args->seq_args, &hdr);
 encode_putfh(&xdr, args->dir_fh, &hdr);
 encode_lookup(&xdr, args->name, &hdr);
 replen = hdr.replen;
 encode_fs_locations(&xdr, args->bitmask, &hdr);

 xdr_inline_pages(&req->rq_rcv_buf, replen << 2, &args->page,
   0, PAGE_SIZE);
 encode_nops(&hdr);
 return 0;
}
