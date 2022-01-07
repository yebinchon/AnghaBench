
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sctp_cookie {int raw_addr_list_len; TYPE_5__* peer_init; } ;
struct TYPE_12__ {int bind_addr; } ;
struct sctp_association {TYPE_3__* ep; TYPE_6__ base; } ;
typedef int gfp_t ;
typedef int __u8 ;
struct TYPE_10__ {int length; } ;
struct TYPE_11__ {TYPE_4__ chunk_hdr; } ;
struct TYPE_7__ {int port; } ;
struct TYPE_8__ {TYPE_1__ bind_addr; } ;
struct TYPE_9__ {TYPE_2__ base; } ;


 int ntohs (int ) ;
 int sctp_raw_to_bind_addrs (int *,int *,int,int ,int ) ;

int sctp_assoc_set_bind_addr_from_cookie(struct sctp_association *asoc,
      struct sctp_cookie *cookie,
      gfp_t gfp)
{
 int var_size2 = ntohs(cookie->peer_init->chunk_hdr.length);
 int var_size3 = cookie->raw_addr_list_len;
 __u8 *raw = (__u8 *)cookie->peer_init + var_size2;

 return sctp_raw_to_bind_addrs(&asoc->base.bind_addr, raw, var_size3,
          asoc->ep->base.bind_addr.port, gfp);
}
