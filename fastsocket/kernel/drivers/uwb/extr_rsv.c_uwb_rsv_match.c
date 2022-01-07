
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int type; TYPE_1__* dev; } ;
struct uwb_rsv {int stream; TYPE_2__ target; TYPE_3__* owner; } ;
struct uwb_ie_drp {int dummy; } ;
struct uwb_dev_addr {int dummy; } ;
struct uwb_dev {int dev_addr; } ;
struct TYPE_6__ {struct uwb_dev_addr dev_addr; } ;
struct TYPE_4__ {struct uwb_dev_addr dev_addr; } ;




 int uwb_dev_addr_cmp (int *,struct uwb_dev_addr*) ;
 int uwb_ie_drp_owner (struct uwb_ie_drp*) ;
 int uwb_ie_drp_stream_index (struct uwb_ie_drp*) ;

__attribute__((used)) static bool uwb_rsv_match(struct uwb_rsv *rsv, struct uwb_dev *src,
     struct uwb_ie_drp *drp_ie)
{
 struct uwb_dev_addr *rsv_src;
 int stream;

 stream = uwb_ie_drp_stream_index(drp_ie);

 if (rsv->stream != stream)
  return 0;

 switch (rsv->target.type) {
 case 128:
  return rsv->stream == stream;
 case 129:
  if (uwb_ie_drp_owner(drp_ie))
   rsv_src = &rsv->owner->dev_addr;
  else
   rsv_src = &rsv->target.dev->dev_addr;
  return uwb_dev_addr_cmp(&src->dev_addr, rsv_src) == 0;
 }
 return 0;
}
