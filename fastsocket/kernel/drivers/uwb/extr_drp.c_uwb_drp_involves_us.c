
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev_addr; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_ie_drp {int dev_addr; } ;


 scalar_t__ uwb_dev_addr_cmp (int *,int *) ;

__attribute__((used)) static bool uwb_drp_involves_us(struct uwb_rc *rc, struct uwb_ie_drp *drp_ie)
{
 return uwb_dev_addr_cmp(&rc->uwb_dev.dev_addr, &drp_ie->dev_addr) == 0;
}
