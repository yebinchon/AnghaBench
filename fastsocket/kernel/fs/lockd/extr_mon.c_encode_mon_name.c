
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nsm_args {int mon_name; } ;


 int encode_nsm_string (struct xdr_stream*,int ) ;

__attribute__((used)) static int encode_mon_name(struct xdr_stream *xdr, const struct nsm_args *argp)
{
 return encode_nsm_string(xdr, argp->mon_name);
}
