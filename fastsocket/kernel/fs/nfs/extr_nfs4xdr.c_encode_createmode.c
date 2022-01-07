
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int verifier; struct iattr* attrs; } ;
struct nfs_openargs {int createmode; int server; TYPE_1__ u; } ;
struct iattr {int ia_valid; } ;
typedef int __be32 ;






 int cpu_to_be32 (int const) ;
 int encode_attrs (struct xdr_stream*,struct iattr*,int ) ;
 int encode_nfs4_verifier (struct xdr_stream*,int *) ;
 int * reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static inline void encode_createmode(struct xdr_stream *xdr, const struct nfs_openargs *arg)
{
 struct iattr dummy;
 __be32 *p;

 p = reserve_space(xdr, 4);
 switch(arg->createmode) {
 case 128:
  *p = cpu_to_be32(128);
  encode_attrs(xdr, arg->u.attrs, arg->server);
  break;
 case 129:
  *p = cpu_to_be32(129);
  encode_attrs(xdr, arg->u.attrs, arg->server);
  break;
 case 131:
  *p = cpu_to_be32(131);
  encode_nfs4_verifier(xdr, &arg->u.verifier);
  break;
 case 130:
  *p = cpu_to_be32(130);
  encode_nfs4_verifier(xdr, &arg->u.verifier);
  dummy.ia_valid = 0;
  encode_attrs(xdr, &dummy, arg->server);
 }
}
