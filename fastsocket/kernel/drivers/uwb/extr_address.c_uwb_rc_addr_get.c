
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uwb_rc_evt_dev_addr_mgmt {int baAddr; } ;
struct uwb_rc {int dummy; } ;
struct uwb_mac_addr {int* data; } ;
struct uwb_dev_addr {int* data; } ;
typedef enum uwb_addr_type { ____Placeholder_uwb_addr_type } uwb_addr_type ;


 int BUG () ;
 int EINVAL ;


 int memcpy (int**,int ,int) ;
 int uwb_rc_dev_addr_mgmt (struct uwb_rc*,int,int*,struct uwb_rc_evt_dev_addr_mgmt*) ;

__attribute__((used)) static int uwb_rc_addr_get(struct uwb_rc *rc,
      void *_addr, enum uwb_addr_type type)
{
 int result;
 u8 bmOperationType = 0x0;
 struct uwb_rc_evt_dev_addr_mgmt evt;
 struct uwb_dev_addr *dev_addr = _addr;
 struct uwb_mac_addr *mac_addr = _addr;
 u8 *baAddr;

 result = -EINVAL;
 switch (type) {
 case 129:
  baAddr = dev_addr->data;
  break;
 case 128:
  bmOperationType |= 0x2;
  baAddr = mac_addr->data;
  break;
 default:
  return result;
 }
 result = uwb_rc_dev_addr_mgmt(rc, bmOperationType, baAddr, &evt);
 if (result == 0)
  switch (type) {
  case 129:
   memcpy(&dev_addr->data, evt.baAddr,
          sizeof(dev_addr->data));
   break;
  case 128:
   memcpy(&mac_addr->data, evt.baAddr,
          sizeof(mac_addr->data));
   break;
  default:
   BUG();
  }
 return result;
}
