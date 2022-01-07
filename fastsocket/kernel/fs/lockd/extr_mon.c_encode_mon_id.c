
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nsm_args {int dummy; } ;


 int encode_mon_name (struct xdr_stream*,struct nsm_args const*) ;
 int encode_my_id (struct xdr_stream*,struct nsm_args const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int encode_mon_id(struct xdr_stream *xdr, const struct nsm_args *argp)
{
 int status;

 status = encode_mon_name(xdr, argp);
 if (unlikely(status != 0))
  return status;
 return encode_my_id(xdr, argp);
}
