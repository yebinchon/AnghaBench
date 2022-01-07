
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int length; } ;
struct TYPE_10__ {TYPE_1__ param_hdr; } ;
union sctp_addr_param {TYPE_2__ v4; } ;
struct sctp_chunk {int transmitted_list; TYPE_3__* skb; } ;
struct TYPE_12__ {int addip_disabled_mask; } ;
struct sctp_association {struct sctp_chunk* addip_last_asconf; TYPE_4__ peer; } ;
typedef int sctp_addiphdr_t ;
struct TYPE_13__ {int length; int type; } ;
struct TYPE_14__ {TYPE_5__ param_hdr; } ;
typedef TYPE_6__ sctp_addip_param_t ;
typedef int sctp_addip_chunk_t ;
typedef int __be16 ;
struct TYPE_11__ {int len; scalar_t__ data; } ;
 int list_del_init (int *) ;
 int ntohs (int ) ;
 int sctp_asconf_param_success (struct sctp_association*,TYPE_6__*) ;
 int sctp_chunk_free (struct sctp_chunk*) ;
 int sctp_get_asconf_response (struct sctp_chunk*,TYPE_6__*,int) ;

int sctp_process_asconf_ack(struct sctp_association *asoc,
       struct sctp_chunk *asconf_ack)
{
 struct sctp_chunk *asconf = asoc->addip_last_asconf;
 union sctp_addr_param *addr_param;
 sctp_addip_param_t *asconf_param;
 int length = 0;
 int asconf_len = asconf->skb->len;
 int all_param_pass = 0;
 int no_err = 1;
 int retval = 0;
 __be16 err_code = 131;




 length = sizeof(sctp_addip_chunk_t);
 addr_param = (union sctp_addr_param *)(asconf->skb->data + length);
 asconf_len -= length;




 length = ntohs(addr_param->v4.param_hdr.length);
 asconf_param = (sctp_addip_param_t *)((void *)addr_param + length);
 asconf_len -= length;






 if (asconf_ack->skb->len == sizeof(sctp_addiphdr_t))
  all_param_pass = 1;


 while (asconf_len > 0) {
  if (all_param_pass)
   err_code = 131;
  else {
   err_code = sctp_get_asconf_response(asconf_ack,
           asconf_param,
           no_err);
   if (no_err && (131 != err_code))
    no_err = 0;
  }

  switch (err_code) {
  case 131:
   sctp_asconf_param_success(asoc, asconf_param);
   break;

  case 129:
   retval = 1;
   break;

  case 128:



   asoc->peer.addip_disabled_mask |=
    asconf_param->param_hdr.type;
   break;

  case 130:
  case 133:
  case 132:
  default:
    break;
  }




  length = ntohs(asconf_param->param_hdr.length);
  asconf_param = (sctp_addip_param_t *)((void *)asconf_param +
            length);
  asconf_len -= length;
 }


 list_del_init(&asconf->transmitted_list);
 sctp_chunk_free(asconf);
 asoc->addip_last_asconf = ((void*)0);

 return retval;
}
