
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nsm_args {TYPE_1__* priv; } ;
typedef int __be32 ;
struct TYPE_2__ {int data; } ;


 int EIO ;
 int SM_PRIV_SIZE ;
 scalar_t__ unlikely (int ) ;
 int xdr_encode_opaque_fixed (int *,int ,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int ) ;

__attribute__((used)) static int encode_priv(struct xdr_stream *xdr, const struct nsm_args *argp)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, SM_PRIV_SIZE);
 if (unlikely(p == ((void*)0)))
  return -EIO;
 xdr_encode_opaque_fixed(p, argp->priv->data, SM_PRIV_SIZE);
 return 0;
}
