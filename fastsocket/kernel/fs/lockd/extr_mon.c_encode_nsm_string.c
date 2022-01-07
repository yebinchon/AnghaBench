
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int EIO ;
 scalar_t__ const SM_MAXSTRLEN ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ unlikely (int) ;
 int xdr_encode_opaque (int *,char const*,scalar_t__ const) ;
 int * xdr_reserve_space (struct xdr_stream*,scalar_t__ const) ;

__attribute__((used)) static int encode_nsm_string(struct xdr_stream *xdr, const char *string)
{
 const u32 len = strlen(string);
 __be32 *p;

 if (unlikely(len > SM_MAXSTRLEN))
  return -EIO;
 p = xdr_reserve_space(xdr, sizeof(u32) + len);
 if (unlikely(p == ((void*)0)))
  return -EIO;
 xdr_encode_opaque(p, string, len);
 return 0;
}
