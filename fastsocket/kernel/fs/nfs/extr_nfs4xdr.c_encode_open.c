
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int delegation; int delegation_type; } ;
struct nfs_openargs {int claim; TYPE_1__ u; int name; } ;
struct compound_hdr {int replen; int nops; } ;


 int BUG () ;





 scalar_t__ decode_open_maxsz ;
 int encode_claim_delegate_cur (struct xdr_stream*,int ,int *) ;
 int encode_claim_delegate_cur_fh (struct xdr_stream*,int *) ;
 int encode_claim_fh (struct xdr_stream*) ;
 int encode_claim_null (struct xdr_stream*,int ) ;
 int encode_claim_previous (struct xdr_stream*,int ) ;
 int encode_openhdr (struct xdr_stream*,struct nfs_openargs const*) ;
 int encode_opentype (struct xdr_stream*,struct nfs_openargs const*) ;

__attribute__((used)) static void encode_open(struct xdr_stream *xdr, const struct nfs_openargs *arg, struct compound_hdr *hdr)
{
 encode_openhdr(xdr, arg);
 encode_opentype(xdr, arg);
 switch (arg->claim) {
 case 129:
  encode_claim_null(xdr, arg->name);
  break;
 case 128:
  encode_claim_previous(xdr, arg->u.delegation_type);
  break;
 case 132:
  encode_claim_delegate_cur(xdr, arg->name, &arg->u.delegation);
  break;
 case 130:
  encode_claim_fh(xdr);
  break;
 case 131:
  encode_claim_delegate_cur_fh(xdr, &arg->u.delegation);
  break;
 default:
  BUG();
 }
 hdr->nops++;
 hdr->replen += decode_open_maxsz;
}
