
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int err_hdr; } ;
struct sctp_chunk {TYPE_1__ subh; int skb; } ;
struct TYPE_5__ {int length; int cause; } ;
typedef TYPE_2__ sctp_errhdr_t ;
typedef int __u16 ;
typedef int __be16 ;


 int ENOSPC ;
 int htons (int) ;
 int sctp_addto_chunk_fixed (struct sctp_chunk*,int,TYPE_2__*) ;
 int skb_tailroom (int ) ;

int sctp_init_cause_fixed(struct sctp_chunk *chunk, __be16 cause_code,
        size_t paylen)
{
 sctp_errhdr_t err;
 __u16 len;


 err.cause = cause_code;
 len = sizeof(sctp_errhdr_t) + paylen;
 err.length = htons(len);

 if (skb_tailroom(chunk->skb) < len)
  return -ENOSPC;
 chunk->subh.err_hdr = sctp_addto_chunk_fixed(chunk,
           sizeof(sctp_errhdr_t),
           &err);
 return 0;
}
