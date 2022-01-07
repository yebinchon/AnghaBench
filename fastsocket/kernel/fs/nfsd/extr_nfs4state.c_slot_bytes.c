
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_channel_attrs {int maxresp_cached; } ;


 int NFSD_MIN_HDR_SEQ_SZ ;

__attribute__((used)) static inline int slot_bytes(struct nfsd4_channel_attrs *ca)
{
 return ca->maxresp_cached - NFSD_MIN_HDR_SEQ_SZ;
}
