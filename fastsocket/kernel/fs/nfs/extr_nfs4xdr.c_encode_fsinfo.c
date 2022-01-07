
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct compound_hdr {int dummy; } ;


 int encode_getattr_two (struct xdr_stream*,int const,int const,struct compound_hdr*) ;
 int const* nfs4_fsinfo_bitmap ;

__attribute__((used)) static void encode_fsinfo(struct xdr_stream *xdr, const u32* bitmask, struct compound_hdr *hdr)
{
 encode_getattr_two(xdr, bitmask[0] & nfs4_fsinfo_bitmap[0],
      bitmask[1] & nfs4_fsinfo_bitmap[1], hdr);
}
