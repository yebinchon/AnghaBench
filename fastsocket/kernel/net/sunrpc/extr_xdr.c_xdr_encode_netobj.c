
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {int len; int data; } ;
typedef scalar_t__ __be32 ;


 int XDR_QUADLEN (int ) ;
 int cpu_to_be32 (int ) ;
 int memcpy (scalar_t__*,int ,int ) ;

__be32 *
xdr_encode_netobj(__be32 *p, const struct xdr_netobj *obj)
{
 unsigned int quadlen = XDR_QUADLEN(obj->len);

 p[quadlen] = 0;
 *p++ = cpu_to_be32(obj->len);
 memcpy(p, obj->data, obj->len);
 return p + XDR_QUADLEN(obj->len);
}
