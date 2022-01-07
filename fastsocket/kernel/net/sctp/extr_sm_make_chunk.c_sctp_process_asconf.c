
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int length; } ;
struct TYPE_14__ {TYPE_3__ param_hdr; } ;
union sctp_addr_param {TYPE_4__ v4; } ;
struct sctp_chunk {int transmitted_list; TYPE_2__* skb; TYPE_1__* chunk_hdr; } ;
struct TYPE_16__ {int addip_serial; } ;
struct sctp_association {int asconf_ack_list; TYPE_6__ peer; } ;
typedef int sctp_chunkhdr_t ;
struct TYPE_17__ {int serial; } ;
typedef TYPE_7__ sctp_addiphdr_t ;
struct TYPE_15__ {int length; } ;
struct TYPE_18__ {TYPE_5__ param_hdr; int crr_id; } ;
typedef TYPE_8__ sctp_addip_param_t ;
typedef int __u32 ;
typedef scalar_t__ __be16 ;
struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_11__ {int length; } ;


 scalar_t__ SCTP_ERROR_NO_ERROR ;
 scalar_t__ SCTP_ERROR_RSRC_LOW ;
 int list_add_tail (int *,int *) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int sctp_add_asconf_response (struct sctp_chunk*,int ,scalar_t__,TYPE_8__*) ;
 int sctp_chunk_hold (struct sctp_chunk*) ;
 struct sctp_chunk* sctp_make_asconf_ack (struct sctp_association*,int ,int) ;
 scalar_t__ sctp_process_asconf_param (struct sctp_association*,struct sctp_chunk*,TYPE_8__*) ;

struct sctp_chunk *sctp_process_asconf(struct sctp_association *asoc,
           struct sctp_chunk *asconf)
{
 sctp_addiphdr_t *hdr;
 union sctp_addr_param *addr_param;
 sctp_addip_param_t *asconf_param;
 struct sctp_chunk *asconf_ack;

 __be16 err_code;
 int length = 0;
 int chunk_len;
 __u32 serial;
 int all_param_pass = 1;

 chunk_len = ntohs(asconf->chunk_hdr->length) - sizeof(sctp_chunkhdr_t);
 hdr = (sctp_addiphdr_t *)asconf->skb->data;
 serial = ntohl(hdr->serial);


 length = sizeof(sctp_addiphdr_t);
 addr_param = (union sctp_addr_param *)(asconf->skb->data + length);
 chunk_len -= length;




 length = ntohs(addr_param->v4.param_hdr.length);
 asconf_param = (sctp_addip_param_t *)((void *)addr_param + length);
 chunk_len -= length;






 asconf_ack = sctp_make_asconf_ack(asoc, serial, chunk_len * 4);
 if (!asconf_ack)
  goto done;


 while (chunk_len > 0) {
  err_code = sctp_process_asconf_param(asoc, asconf,
           asconf_param);







  if (SCTP_ERROR_NO_ERROR != err_code)
   all_param_pass = 0;

  if (!all_param_pass)
   sctp_add_asconf_response(asconf_ack,
       asconf_param->crr_id, err_code,
       asconf_param);






  if (SCTP_ERROR_RSRC_LOW == err_code)
   goto done;


  length = ntohs(asconf_param->param_hdr.length);
  asconf_param = (sctp_addip_param_t *)((void *)asconf_param +
            length);
  chunk_len -= length;
 }

done:
 asoc->peer.addip_serial++;




 if (asconf_ack) {
  sctp_chunk_hold(asconf_ack);
  list_add_tail(&asconf_ack->transmitted_list,
         &asoc->asconf_ack_list);
 }

 return asconf_ack;
}
