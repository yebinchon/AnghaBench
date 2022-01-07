
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rndis_params {scalar_t__ state; int v; int (* resp_avail ) (int ) ;} ;
struct TYPE_4__ {scalar_t__ buf; } ;
typedef TYPE_1__ rndis_resp_t ;
struct TYPE_5__ {void* StatusBufferOffset; void* StatusBufferLength; void* Status; void* MessageLength; void* MessageType; } ;
typedef TYPE_2__ rndis_indicate_status_msg_type ;


 int ENOMEM ;
 int ENOTSUPP ;
 int REMOTE_NDIS_INDICATE_STATUS_MSG ;
 scalar_t__ RNDIS_UNINITIALIZED ;
 void* cpu_to_le32 (int) ;
 TYPE_1__* rndis_add_response (int,int) ;
 struct rndis_params* rndis_per_dev_params ;
 int stub1 (int ) ;

__attribute__((used)) static int rndis_indicate_status_msg (int configNr, u32 status)
{
 rndis_indicate_status_msg_type *resp;
 rndis_resp_t *r;
 struct rndis_params *params = rndis_per_dev_params + configNr;

 if (params->state == RNDIS_UNINITIALIZED)
  return -ENOTSUPP;

 r = rndis_add_response (configNr,
    sizeof (rndis_indicate_status_msg_type));
 if (!r)
  return -ENOMEM;
 resp = (rndis_indicate_status_msg_type *) r->buf;

 resp->MessageType = cpu_to_le32 (
   REMOTE_NDIS_INDICATE_STATUS_MSG);
 resp->MessageLength = cpu_to_le32 (20);
 resp->Status = cpu_to_le32 (status);
 resp->StatusBufferLength = cpu_to_le32 (0);
 resp->StatusBufferOffset = cpu_to_le32 (0);

 params->resp_avail(params->v);
 return 0;
}
