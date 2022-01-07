
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdr_stream {int dummy; } ;
struct timespec {int dummy; } ;
typedef int __be32 ;


 int const FATTR4_WORD1_TIME_METADATA ;
 int encode_attr_time (struct xdr_stream*,struct timespec const*) ;

__attribute__((used)) static __be32 encode_attr_ctime(struct xdr_stream *xdr, const uint32_t *bitmap, const struct timespec *time)
{
 if (!(bitmap[1] & FATTR4_WORD1_TIME_METADATA))
  return 0;
 return encode_attr_time(xdr,time);
}
