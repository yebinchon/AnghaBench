
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rndis_params {int v; int (* resp_avail ) (int ) ;} ;
struct TYPE_6__ {scalar_t__ buf; } ;
typedef TYPE_1__ rndis_resp_t ;
struct TYPE_7__ {int RequestID; } ;
typedef TYPE_2__ rndis_keepalive_msg_type ;
struct TYPE_8__ {void* Status; int RequestID; void* MessageLength; void* MessageType; } ;
typedef TYPE_3__ rndis_keepalive_cmplt_type ;


 int ENOMEM ;
 int REMOTE_NDIS_KEEPALIVE_CMPLT ;
 int RNDIS_STATUS_SUCCESS ;
 void* cpu_to_le32 (int) ;
 TYPE_1__* rndis_add_response (int,int) ;
 struct rndis_params* rndis_per_dev_params ;
 int stub1 (int ) ;

__attribute__((used)) static int rndis_keepalive_response (int configNr,
    rndis_keepalive_msg_type *buf)
{
 rndis_keepalive_cmplt_type *resp;
 rndis_resp_t *r;
 struct rndis_params *params = rndis_per_dev_params + configNr;



 r = rndis_add_response (configNr, sizeof (rndis_keepalive_cmplt_type));
 if (!r)
  return -ENOMEM;
 resp = (rndis_keepalive_cmplt_type *) r->buf;

 resp->MessageType = cpu_to_le32 (
   REMOTE_NDIS_KEEPALIVE_CMPLT);
 resp->MessageLength = cpu_to_le32 (16);
 resp->RequestID = buf->RequestID;
 resp->Status = cpu_to_le32 (RNDIS_STATUS_SUCCESS);

 params->resp_avail(params->v);
 return 0;
}
