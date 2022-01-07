
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ nfs4_stateid ;


 int NFS4_STATEID_SIZE ;
 int decode_opaque_fixed (struct xdr_stream*,int ,int ) ;

__attribute__((used)) static int decode_stateid(struct xdr_stream *xdr, nfs4_stateid *stateid)
{
 return decode_opaque_fixed(xdr, stateid->data, NFS4_STATEID_SIZE);
}
