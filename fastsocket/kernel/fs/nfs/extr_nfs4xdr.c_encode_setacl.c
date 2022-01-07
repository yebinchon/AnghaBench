
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs_setaclargs {int acl_len; int acl_pgbase; int acl_pages; } ;
struct compound_hdr {int replen; int nops; } ;
typedef void* __be32 ;
struct TYPE_2__ {int data; } ;


 int EINVAL ;
 int FATTR4_WORD0_ACL ;
 int NFS4_STATEID_SIZE ;
 int OP_SETATTR ;
 void* cpu_to_be32 (int) ;
 scalar_t__ decode_setacl_maxsz ;
 void** reserve_space (struct xdr_stream*,int) ;
 int xdr_encode_opaque_fixed (void**,int ,int) ;
 int xdr_write_pages (struct xdr_stream*,int ,int ,int) ;
 TYPE_1__ zero_stateid ;

__attribute__((used)) static int
encode_setacl(struct xdr_stream *xdr, struct nfs_setaclargs *arg, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 4+NFS4_STATEID_SIZE);
 *p++ = cpu_to_be32(OP_SETATTR);
 xdr_encode_opaque_fixed(p, zero_stateid.data, NFS4_STATEID_SIZE);
 p = reserve_space(xdr, 2*4);
 *p++ = cpu_to_be32(1);
 *p = cpu_to_be32(FATTR4_WORD0_ACL);
 if (arg->acl_len % 4)
  return -EINVAL;
 p = reserve_space(xdr, 4);
 *p = cpu_to_be32(arg->acl_len);
 xdr_write_pages(xdr, arg->acl_pages, arg->acl_pgbase, arg->acl_len);
 hdr->nops++;
 hdr->replen += decode_setacl_maxsz;
 return 0;
}
