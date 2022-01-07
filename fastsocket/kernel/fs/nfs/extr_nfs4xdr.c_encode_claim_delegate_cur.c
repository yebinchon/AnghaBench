
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct qstr {int name; int len; } ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ nfs4_stateid ;
typedef int __be32 ;


 int NFS4_OPEN_CLAIM_DELEGATE_CUR ;
 scalar_t__ NFS4_STATEID_SIZE ;
 int cpu_to_be32 (int ) ;
 int encode_string (struct xdr_stream*,int ,int ) ;
 int * reserve_space (struct xdr_stream*,scalar_t__) ;
 int xdr_encode_opaque_fixed (int *,int ,scalar_t__) ;

__attribute__((used)) static inline void encode_claim_delegate_cur(struct xdr_stream *xdr, const struct qstr *name, const nfs4_stateid *stateid)
{
 __be32 *p;

 p = reserve_space(xdr, 4+NFS4_STATEID_SIZE);
 *p++ = cpu_to_be32(NFS4_OPEN_CLAIM_DELEGATE_CUR);
 xdr_encode_opaque_fixed(p, stateid->data, NFS4_STATEID_SIZE);
 encode_string(xdr, name->len, name->name);
}
