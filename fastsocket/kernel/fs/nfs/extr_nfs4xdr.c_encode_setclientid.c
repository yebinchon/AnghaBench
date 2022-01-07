
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs4_setclientid {int sc_cb_ident; int sc_uaddr; int sc_uaddr_len; int sc_netid; int sc_netid_len; int sc_prog; int sc_name; int sc_name_len; TYPE_1__* sc_verifier; } ;
struct compound_hdr {int replen; int nops; } ;
typedef void* __be32 ;
struct TYPE_2__ {int data; } ;


 int NFS4_VERIFIER_SIZE ;
 int OP_SETCLIENTID ;
 void* cpu_to_be32 (int ) ;
 scalar_t__ decode_setclientid_maxsz ;
 int encode_string (struct xdr_stream*,int ,int ) ;
 void** reserve_space (struct xdr_stream*,int) ;
 int xdr_encode_opaque_fixed (void**,int ,int) ;

__attribute__((used)) static void encode_setclientid(struct xdr_stream *xdr, const struct nfs4_setclientid *setclientid, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 4 + NFS4_VERIFIER_SIZE);
 *p++ = cpu_to_be32(OP_SETCLIENTID);
 xdr_encode_opaque_fixed(p, setclientid->sc_verifier->data, NFS4_VERIFIER_SIZE);

 encode_string(xdr, setclientid->sc_name_len, setclientid->sc_name);
 p = reserve_space(xdr, 4);
 *p = cpu_to_be32(setclientid->sc_prog);
 encode_string(xdr, setclientid->sc_netid_len, setclientid->sc_netid);
 encode_string(xdr, setclientid->sc_uaddr_len, setclientid->sc_uaddr);
 p = reserve_space(xdr, 4);
 *p = cpu_to_be32(setclientid->sc_cb_ident);
 hdr->nops++;
 hdr->replen += decode_setclientid_maxsz;
}
