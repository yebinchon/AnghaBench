
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct nsm_args {int proc; int vers; int prog; } ;
typedef int __be32 ;
struct TYPE_2__ {int nodename; } ;


 int EIO ;
 int encode_nsm_string (struct xdr_stream*,int ) ;
 void* htonl (int ) ;
 scalar_t__ unlikely (int) ;
 TYPE_1__* utsname () ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static int encode_my_id(struct xdr_stream *xdr, const struct nsm_args *argp)
{
 int status;
 __be32 *p;

 status = encode_nsm_string(xdr, utsname()->nodename);
 if (unlikely(status != 0))
  return status;
 p = xdr_reserve_space(xdr, 3 * sizeof(u32));
 if (unlikely(p == ((void*)0)))
  return -EIO;
 *p++ = htonl(argp->prog);
 *p++ = htonl(argp->vers);
 *p++ = htonl(argp->proc);
 return 0;
}
