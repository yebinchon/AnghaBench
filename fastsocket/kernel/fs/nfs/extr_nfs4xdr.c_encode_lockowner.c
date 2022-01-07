
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_lowner {int s_dev; int id; int clientid; } ;
typedef int __be32 ;


 void* cpu_to_be32 (int) ;
 int * reserve_space (struct xdr_stream*,int) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_encode_opaque_fixed (int *,char*,int) ;

__attribute__((used)) static void encode_lockowner(struct xdr_stream *xdr, const struct nfs_lowner *lowner)
{
 __be32 *p;

 p = reserve_space(xdr, 32);
 p = xdr_encode_hyper(p, lowner->clientid);
 *p++ = cpu_to_be32(20);
 p = xdr_encode_opaque_fixed(p, "lock id:", 8);
 *p++ = cpu_to_be32(lowner->s_dev);
 xdr_encode_hyper(p, lowner->id);
}
